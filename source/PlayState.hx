package;

import flixel.FlxState;
import Hero;

class PlayState extends FlxState
{
	var hero:Hero;

	override public function create()
	{
		super.create();

		hero = new Hero(300,300);
		add(hero);

		var text = new flixel.text.FlxText(0, 0, 0, "Hello World", 64);
		text.screenCenter();
		text.borderColor = 0xFFFFC0CB;
		text.borderSize = 200;
		text.borderStyle = SHADOW;
		add(text);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
