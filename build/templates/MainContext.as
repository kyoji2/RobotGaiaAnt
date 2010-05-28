package  
{
	import controllers.InitSignalMappingCommand;
	import controllers.StartupCommand;

	import models.AppModel;
	import models.IAppModel;

	import signals.AppSignalBus;

	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.SignalContext;

	import flash.display.DisplayObjectContainer;
	
	public class MainContext extends SignalContext 
	{

		public function MainContext(contextView : DisplayObjectContainer)
		{
			super(contextView);
		}

		override public function startup() : void
		{
			// service
			
			
			// model
			injector.mapSingletonOf(IAppModel, AppModel);
			
			// signals
			injector.mapSingleton(AppSignalBus);
			
			// init commands
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, InitSignalMappingCommand, ContextEvent, true);
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartupCommand, ContextEvent, true);
			
			// views
			mediatorMap.mapView(Main, MainMediator);
			mediatorMap.createMediator(contextView);
			mediatorMap.enabled = false;
			
			viewMap.mapPackage("@PACKAGENAME@");
			viewMap.enabled = false;
			
			super.startup();
		}
	}
}