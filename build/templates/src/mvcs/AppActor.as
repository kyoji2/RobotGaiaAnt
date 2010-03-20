package mvcs 
{
	import signals.AppSignalBus;
	
	public class AppActor 
	{
		[Inject]
		public var signalBus : AppSignalBus;
	}
}
