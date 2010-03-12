/*****************************************************************************************************
* Gaia Framework for Adobe Flash ©2007-2009
* Author: Steven Sacks
*
* blog: http://www.stevensacks.net/
* forum: http://www.gaiaflashframework.com/forum/
* wiki: http://www.gaiaflashframework.com/wiki/
* 
* By using the Gaia Framework, you agree to keep the above contact information in the source code.
* 
* Gaia Framework for Adobe Flash is released under the GPL License:
* http://www.opensource.org/licenses/gpl-2.0.php 
*****************************************************************************************************/

package pages
{
	import com.gaiaframework.events.PageEvent;
	import flash.net.URLRequest;
	import flash.display.Loader;
	
	import flash.events.Event;
	
	import com.gaiaframework.templates.AbstractPage;
	
	public class Scaffold
	{
		private var loader:Loader;
		private var page:AbstractPage;
		private var isComplete:Boolean = false;
		private var isTransitionIn:Boolean = false;
		
		public function Scaffold($page:AbstractPage)
		{
			page = $page;
			loader = new Loader();
			loader.mouseEnabled = false;
			loader.mouseChildren = false;
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete, false, 0, true);
			page.addChild(loader);
			page.addEventListener(PageEvent.TRANSITION_OUT, onTransitionOut);
			page.addEventListener(PageEvent.TRANSITION_IN, onTransitionIn);
			loader.load(new URLRequest("scaffold.swf"));
		}
		private function onTransitionIn($event:PageEvent):void
		{
			page.removeEventListener(PageEvent.TRANSITION_IN, onTransitionIn);
			isTransitionIn = true;
			transitionIn();
		}
		private function onTransitionOut($event:PageEvent):void
		{
			page.removeEventListener(PageEvent.TRANSITION_OUT, onTransitionOut);
			loader.content["transitionOut"]();
		}
		private function onComplete($event:Event):void
		{
			isComplete = true;
			transitionIn();
		}
		private function transitionIn():void
		{
			if (isComplete && isTransitionIn) loader.content["transitionIn"]();
		}
	}
}
