package;

import flixel.FlxState;
import Hero;
import ScreensaverHero;

class PlayState extends FlxState
{
	var hero:Hero;
	var screensaver:ScreensaverHero;
	var x:Int = 0;

	override public function create()
	{
		super.create();

		//make Hero
		hero = new Hero(300,300);
		add(hero);

		//make Text
		var text = new flixel.text.FlxText(0, 0, 0, "Hello World", 64);
		text.screenCenter();
		text.borderColor = 0xFFFFC0CB;
		text.borderSize = 200;
		text.borderStyle = SHADOW;
		add(text);

		//make ScreensaverHero
		while (x < 10)
		{
			screensaver = new ScreensaverHero(300,300);
			add(screensaver);
			x++;
		}
		
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
