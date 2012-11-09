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
class Level1 extends FlxState
{
	var tilemap:FlxTilemap;
	override public function create():Void
	{
		var tmx:TmxMap = new TmxMap(Assets.getText("maps/mylevel.tmx"));
		tilemap = new FlxTilemap();
		var mapCsv:String = tmx.getLayer('layer1').toCsv(tmx.getTileSet('tileset'));
		tilemap.loadMap(mapCsv, "assets/maps/tiles.png", 8, 8, FlxTilemap.OFF);
		add(tilemap);
	}

	
}