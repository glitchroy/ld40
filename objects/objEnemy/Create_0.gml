enum Direction {
	Right = 0,
	Up = 90,
	Left = 180,
	Down = 270
}

maxHp = 1;
hp = 1;

freezing = false;
freezeTimer = 0;
freezeTimerMax = 160;

damageFlash = false;
damageFlashTimer = 0;
damageFlashTimerMax = 6;

damage = 1;

dir = Direction.Down;
image_angle = dir;
spd = 1;

pathForward = true;

var layerId = layer_get_id(layerPath);
roomTilemap = layer_tilemap_get_id(layerId);