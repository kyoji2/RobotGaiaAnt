package  
{
	import com.gaiaframework.api.Gaia;
	import com.gaiaframework.events.GaiaEvent;

	import org.robotlegs.core.IViewMap;
	import org.robotlegs.mvcs.Mediator;
	
	public class MainMediator extends Mediator 
	{

		[Inject]
		public var view : Main;

		[Inject]
		public var viewMap : IViewMap;

		override public function onRegister() : void 
		{
			Gaia.api.beforePreload(enableViewMap);
			Gaia.api.afterPreload(disableViewMap);
		}

		private function enableViewMap(event : GaiaEvent) : void 
		{
			viewMap.enabled = true;
		}

		private function disableViewMap(event : GaiaEvent) : void 
		{
			viewMap.enabled = false;
		}
	}
}
