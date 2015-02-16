package;

import flixel.addons.effects.FlxGlitchSprite;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
using flixel.util.FlxSpriteUtil;
import flixel.util.FlxDestroyUtil;
import flixel.addons.*;


/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		var btnPlay:FlxButton;
		var btnOptn:FlxButton;
		btnPlay = new FlxButton(0, 0, clickPlay);
		btnOptn = new FlxButton((FlxG.width/2)-100, (FlxG.height/2), clickOptn);
		btnPlay.loadGraphic("assets/images/play button.png", true, 100, 100);
		btnOptn.loadGraphic("assets/images/options button.png", true, 200, 100);
		btnPlay.screenCenter();
		add(btnPlay);
		add(btnOptn);
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
	
	
	private function clickPlay()
	{
		FlxG.switchState(new PlayState());
	}
	
	private function clickOptn()
	{
		FlxG.switchState(new OptnState());
	}
}