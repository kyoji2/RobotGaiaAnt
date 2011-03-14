package @PACKAGENAME@.mvcs
{
	import @PACKAGENAME@.signals.AppSignalBus;

	import org.robotlegs.mvcs.Actor;

	public class AppActor extends Actor
	{
		[Inject]
		public var signalBus : AppSignalBus;
	}
}
