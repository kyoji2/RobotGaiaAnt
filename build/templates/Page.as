package @PACKAGENAME@
{
	import com.gaiaframework.templates.AbstractPage;
	import com.greensock.TweenMax;
	
	[SWF(width="@width@", height="@height@", frameRate="@framerate@", backgroundColor="@bgcolor@")]
	
	public class @CLASSNAME@ extends AbstractPage
	{	
		public function @CLASSNAME@()
		{
			super();
			alpha = 0;
			new Scaffold(this);
		}
		
		override public function transitionIn():void 
		{
			super.transitionIn();
			TweenMax.to(this, 0.3, {alpha:1, onComplete:transitionInComplete});
		}
		
		override public function transitionOut():void 
		{
			super.transitionOut();
			TweenMax.to(this, 0.3, {alpha:0, onComplete:transitionOutComplete});
		}
	}
}