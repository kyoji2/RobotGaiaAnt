﻿package
{
	import base.ModulePageMediator;

	import controllers.InitSignalMappingCommand;
	import controllers.StartupCommand;

	import models.AppModel;
	import models.IAppModel;

	import signals.AppSignalBus;

	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.ModuleSignalContext;
	import org.robotlegs.utilities.modular.core.IModule;

	import flash.display.DisplayObjectContainer;

	public class MainContext extends ModuleSignalContext
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

			// init mediators
			mediatorMap.mapView(IModule, ModulePageMediator, IModule);

			super.startup();
		}
	}
}