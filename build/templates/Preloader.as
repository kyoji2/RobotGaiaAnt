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
	import com.gaiaframework.templates.AbstractPreloader;
	import com.gaiaframework.events.AssetEvent;
	
	[SWF(width="@width@", height="@height@", frameRate="@framerate@", backgroundColor="@bgcolor@")]
	
	public class Preloader extends AbstractPreloader
	{	
		//public var scaffold:PreloaderScaffold;
		
		public function Preloader()
		{
			super();
			//scaffold = new PreloaderScaffold();
		}

		override public function transitionIn():void
		{
			//scaffold.transitionIn();
			transitionInComplete();
		}		
		override public function transitionOut():void
		{
			//scaffold.transitionOut();
			transitionOutComplete();
		}
		override public function onProgress(event:AssetEvent):void
		{
			//scaffold.onProgress(event);
		}
	}
}
