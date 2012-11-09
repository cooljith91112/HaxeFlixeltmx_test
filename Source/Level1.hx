package ;

/**
 * ...
 * @author Indrajith K L
 */
import nme.Assets;
import org.flixel.FlxState;
import org.flixel.FlxG;
import org.flixel.FlxTilemap;
import org.flixel.tmx.TmxMap;
import org.flixel.FlxSprite;
class Level1 extends FlxState
{
	var tilemap:FlxTilemap;
	var player:FlxSprite;
	override public function create():Void
	{
		player = new FlxSprite();
		
		var tmx:TmxMap = new TmxMap(Assets.getText("maps/mylevel.tmx"));
		tilemap = new FlxTilemap();
		var mapCsv:String = tmx.getLayer('layer1').toCsv(tmx.getTileSet('tileset'));
		tilemap.loadMap(mapCsv, "assets/maps/tiles.png", 8, 8, FlxTilemap.OFF);
		add(tilemap);
		player.loadGraphic("assets/player.png");
		player.y = 25;
		player.x = 25;
		add(player);
		player.acceleration.y = 200;
	}
	
	override public function destroy():Void
	{
		
	}
	
	override public function update():Void
	{
		super.update();
		FlxG.collide(player, tilemap);
	}

	
}