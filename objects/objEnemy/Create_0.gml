enum Direction {
	Right = 0,
	Up = 90,
	Left = 180,
	Down = 270
}

maxHp = 1;
hp = 1;

freezing = false;

damageFlash = false;
damageFlashTimer = 0;
damageFlashTimerMax = 10;

damage = 1;

dir = Direction.Down;
image_angle = dir;
spd = 1;

pathForward = true;

var layerId = layer_get_id(layerPath);
roomTilemap = layer_tilemap_get_id(layerId);