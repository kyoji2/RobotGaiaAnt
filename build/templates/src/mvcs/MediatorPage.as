package mvcs 
{
	import signals.AppSignalBus;

	import com.gaiaframework.templates.AbstractPage;
	
	public class MediatorPage extends AbstractPage 
	{
		[Inject]
		public var signalBus : AppSignalBus;
	}
}
