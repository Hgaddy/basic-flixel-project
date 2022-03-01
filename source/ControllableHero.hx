package;

import flixel.FlxSprite;
import flixel.FlxG;

class ControllabeHero extends FlxSprite
{
    static inline var SPEED:Float = 50;

    public function new(X:Float = 0, Y:Float = 0) {
        super(X, Y);

        this.makeGraphic(30, 30, 0xFFFFFF00);
    }
    
    override public function update(elapsed:Float):Void
    {
        if (FlxG.keys.pressed.UP)
        {
            // The up arrow key is currently pressed
            // This code is executed every frame, while the key is pressed
            this.velocity.y = -SPEED;
        }
        if (FlxG.keys.justReleased.UP)
        {
            // The left arrow key has just been released
            // This code is only executed once, on the frame immediately after the key has been released
            this.velocity.y = 0;
        }
        if (FlxG.keys.pressed.RIGHT)
        {
            // The up arrow key is currently pressed
            // This code is executed every frame, while the key is pressed
            this.velocity.x = SPEED;
        }
        if (FlxG.keys.justReleased.RIGHT)
        {
            // The left arrow key has just been released
            // This code is only executed once, on the frame immediately after the key has been released
            this.velocity.x = 0;
        }
        if (FlxG.keys.pressed.DOWN)
        {
            // The up arrow key is currently pressed
            // This code is executed every frame, while the key is pressed
            this.velocity.y = SPEED;
        }
        if (FlxG.keys.justReleased.DOWN)
        {
            // The left arrow key has just been released
            // This code is only executed once, on the frame immediately after the key has been released
            this.velocity.y = 0;
        }
        if (FlxG.keys.pressed.LEFT)
        {
            // The up arrow key is currently pressed
            // This code is executed every frame, while the key is pressed
            this.velocity.x = -SPEED;
        }
        if (FlxG.keys.justReleased.LEFT)
        {
            // The left arrow key has just been released
            // This code is only executed once, on the frame immediately after the key has been released
            this.velocity.x = 0;
        }
        
        super.update(elapsed);
    }
}