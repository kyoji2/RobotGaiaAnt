package base
{
	import signals.AppSignalBus;

	import org.robotlegs.mvcs.Actor;

	public class AppActor extends Actor
	{
		[Inject]
		public var signalBus : AppSignalBus;
	}
}
