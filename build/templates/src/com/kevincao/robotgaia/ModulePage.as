package com.kevincao.robotgaia
{
	import com.gaiaframework.templates.AbstractPage;

	import org.robotlegs.core.IInjector;
	import org.robotlegs.utilities.modular.core.IModule;
	import org.robotlegs.utilities.modular.core.IModuleContext;

	/**
	 * @author Kevin Cao
	 */
	public class ModulePage extends AbstractPage implements IModule
	{
		protected var context : IModuleContext;
		protected var _parentInjector : IInjector;

		public function dispose() : void
		{
			if(context)
			{
				context.dispose();
				context = null;
			}
			_parentInjector = null;
		}

		/**
		 * initialize module context
		 */
		public function set parentInjector(value : IInjector) : void
		{
			_parentInjector = value;
			// context = new SomeModuleContext(this, true, value, loaderInfo.applicationDomain);
		}
	}
}
