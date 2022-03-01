package;

import flixel.math.FlxRandom;
import flixel.FlxSprite;

class ScreensaverHero extends FlxSprite
{
    static inline var SPEED:Float = 5;
    var random:FlxRandom;
    var rotation:Int;

    public function new(X:Float = 0, Y:Float = 0) {
        super(X, Y);

        this.makeGraphic(10, 10, 0xFFFFFF00);

        random = new FlxRandom();
        rotation = random.int(0,3);
        if (rotation == 0)
        {
            this.velocity.x = -SPEED;
        }
        else if (rotation == 1)
        {
            this.velocity.y = -SPEED;
        }
        else if (rotation == 2)
        {
            this.velocity.x = SPEED;
        }
        else
            this.velocity.y = SPEED;
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
        if (this.x > 200)
        {
            this.color = 0xFF800080;
        }
        else
        {
            this.color = 0xFFFFFF00;
        }
    }
}