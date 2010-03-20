package controllers 
{
	import signals.AppSignalBus;

	import org.robotlegs.mvcs.SignalCommand;
	
	public class InitSignalMappingCommand extends SignalCommand
	{

		[Inject]
		public var signalBus : AppSignalBus;

		override public function execute() : void 
		{
		}
	}
}
