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
	//stores the path that the user has defined - list of mouse click coordinates
	public var destinations:Array<FlxPoint>;
	
	//regulates motion FSM
	public var moving:Bool;
	
	//linear, quadratic or cubic path
	private var polyMotion:Int;

	public function new(X:Float=0, Y:Float=0, ?SimpleGraphic:Dynamic) 
	{
		destinations = new Array<FlxPoint>();
		super(X, Y, SimpleGraphic);
	}
	
	override public function update():Void 
	{
		//add mouse coords to destinations when mouse is clicked
		if (FlxG.mouse.justPressed)
		{
			destinations.push(new FlxPoint(FlxG.mouse.x, FlxG.mouse.y));
		}
		
		//makes sure the player is moving when it's supposed to be
		if (!moving && destinations.length>0)
			{
				trace("startmoving");
				moving = true;
				
				//optimizes the polymotion value
				if (destinations.length == 1)
				{
					polyMotion = 1;
				}
				else if(destinations.length == 2)
				{
					polyMotion = 2;
				}
				else
				{
					polyMotion = 3;
				}
				
				move();
			}
		super.update();
	}
	
	//I had to make a function to set moving to flase for callback purposes
	private function stopMoving(tween:FlxTween) 
	{
		moving = false;
	}
	
	//initiates appropriate tween
	public function move() 
	{
		//stores the next destination - then deletes it
		var curDest = destinations.shift(); 
		
		if (polyMotion == 1)
		{
			//moves straight to next destination
			FlxTween.linearMotion(this, this.x, this.y, curDest.x, curDest.y, 100, false, { complete:stopMoving } );
		}
		else if (polyMotion==2)
		{
			//looks at next 2 destinations and follows a quadratic path - deletes the second destination
			FlxTween.quadMotion(this, this.x, this.y, curDest.x, curDest.y, destinations[0].x, destinations[0].y, 100, false, { complete:stopMoving } );
			destinations.shift();
		}
		else
		{
			//looks at next 3 destinations and follows cubicc path - deletes the second and third destination
			FlxTween.cubicMotion(this, this.x, this.y, curDest.x, curDest.y, destinations[0].x, destinations[0].y, destinations[1].x, destinations[1].y, this.getMidpoint().distanceTo(destinations[1])/100, { complete:stopMoving } );
			destinations.shift();
			destinations.shift();
		}
		
	}
	
}