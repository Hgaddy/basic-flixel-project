package;

import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		add(Hero);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
