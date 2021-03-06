package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
using flixel.util.FlxSpriteUtil;
import flixel.util.FlxDestroyUtil;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{	
	public var player:Player;
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		var welcomeText:FlxText;
		welcomeText = new FlxText(0, 0, 0, "welcome, Abhi, to the game");
		welcomeText.screenCenter();
		add(welcomeText);
		player = new Player();
		add(player);
		super.create();
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
	}	
}