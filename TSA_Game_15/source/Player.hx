package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.input.mouse.*;
import flixel.util.*;
import flixel.FlxG.*;
import flixel.tweens.FlxTween;
import flixel.text.*;

/**
 * ...
 * @author ...
 */
class Player extends FlxSprite
{
	public var destination:FlxPoint;

	public function new(X:Float=0, Y:Float=0, ?SimpleGraphic:Dynamic) 
	{
		destination = new FlxPoint(0, 0);
		super(X, Y, SimpleGraphic);
		FlxTween.tween(this, {x:100, y:100 }, 1);
	}
	
	override public function update():Void 
	{
		
		if (FlxG.mouse.justPressed)
		{
			destination.x = FlxG.mouse.x;
			destination.y = FlxG.mouse.y;
			trace(destination);
			move();
		}
		super.update();
	}
	
	public function move() 
	{
		FlxTween.tween(this, { x: destination.x, y: destination.y}, 1);
	}
	
}