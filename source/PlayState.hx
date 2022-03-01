package;

import ControllableHero.ControllabeHero;
import flixel.FlxState;
import Hero;
import ScreensaverHero;
import ControllableHero;

class PlayState extends FlxState
{
	var hero:Hero;
	var screensaver:ScreensaverHero;
	var controllableHero:ControllabeHero;
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
		controllableHero = new ControllabeHero(300,300);
		add(controllableHero);
		
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
