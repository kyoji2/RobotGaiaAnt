package @PACKAGENAME@.controllers 
{
	import @PACKAGENAME@.models.IAppModel;
	
	import org.robotlegs.mvcs.Command;
	
	public class StartupCommand extends Command 
	{
		
		[Inject]
		public var model : IAppModel;
		
		override public function execute() : void 
		{
			
		}
	}
}
