package @PACKAGENAME@.contexts
{
	import com.kevincao.robotgaia.ModulePageMediator;

	import @PACKAGENAME@.controllers.InitSignalMappingCommand;
	import @PACKAGENAME@.controllers.StartupCommand;

	import @PACKAGENAME@.models.AppModel;
	import @PACKAGENAME@.models.IAppModel;

	import @PACKAGENAME@.signals.AppSignalBus;

	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.base.ViewInterfaceMediatorMap;
	import org.robotlegs.core.IMediatorMap;
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
			// signals
			injector.mapSingleton(AppSignalBus);

			// service
			

			// model
			injector.mapSingletonOf(IAppModel, AppModel);

			// init commands
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, InitSignalMappingCommand, ContextEvent, true);
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartupCommand, ContextEvent, true);

			// init mediators
			mediatorMap.mapView(IModule, ModulePageMediator);

			super.startup();
		}

		override protected function get mediatorMap() : IMediatorMap
		{
			return _mediatorMap ||= new ViewInterfaceMediatorMap(contextView, createChildInjector(), reflector);
		}
	}
}