package com.kevincao.robotgaia
{
	import org.robotlegs.core.IInjector;
	import org.robotlegs.utilities.modular.core.IModule;
	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author Kevin Cao
	 */
	public class ModulePageMediator extends Mediator
	{
		[Inject]
		public var view : IModule;

		[Inject]
		public var injector : IInjector;

		override public function onRegister() : void
		{
			view.parentInjector = injector;
		}

		override public function onRemove() : void
		{
			view.dispose();
		}
	}
}
