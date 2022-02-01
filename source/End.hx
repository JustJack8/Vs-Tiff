package;
import flixel.*;

class End extends MusicBeatState
{

	public function new() 
	{
		super();
	}
	
	override function create() 
	{
		super.create();
		
		var bg:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image("end"));
		add(bg);
		FlxG.sound.playMusic(Paths.music("freakyMenu"));
		
		
	}
	
	
	override function update(elapsed:Float) 
	{
		super.update(elapsed);
		
		
		if (controls.ACCEPT){
			FlxG.switchState(new StoryMenuState());
		}
	}
	
}