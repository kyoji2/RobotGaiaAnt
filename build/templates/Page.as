package @PACKAGENAME@
{
	import com.gaiaframework.templates.AbstractPage;
	import com.greensock.TweenLite;
	@IMPORT@
	
	[SWF(width="@width@", height="@height@", frameRate="@framerate@", backgroundColor="@bgcolor@")]
	public class @CLASSNAME@ extends AbstractPage
	{
		public function @CLASSNAME@()
		{
			super();
			alpha = 0;
			new Scaffold(this);
		}
		
		override public function transitionIn() : void 
		{
			super.transitionIn();
			TweenLite.to(this, 0.3, {alpha: 1, onComplete: transitionInComplete});
		}
		
		override public function transitionOut() : void 
		{
			super.transitionOut();
			TweenLite.to(this, 0.3, {alpha: 0, onComplete: transitionOutComplete});
		}
	}
}