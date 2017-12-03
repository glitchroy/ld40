#region Health Check
if (hp <= 0) {
	instance_destroy();
}
#endregion

#region Damage Flash

if (damageFlashTimer > 0) {
	damageFlash = true;
	damageFlashTimer--;
} else {
	damageFlash = false;
}

#endregion

#region Movement
if (spd > 0) {
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
}

var xx = x;
var yy = y;
switch (dir) {
	case Direction.Left:	xx -= 7; break;
	case Direction.Right:	xx += 6; break;
	case Direction.Down:	yy += 6; break;
	case Direction.Up:		yy -= 7; break;
}

pathForward = tilemap_get_at_pixel(roomTilemap, xx, yy);

//change direction
if (pathForward == false || pathForward == -1) {
	
	var rightOfMe = abs((dir+270) mod 360);
	var leftOfMe = abs((dir+90) mod 360);
	var checkDir;
	
	for (var i = 0; i < 2; i++) {
		
		switch (i) {
			case 0: checkDir = rightOfMe; break;
			case 1: checkDir = leftOfMe; break;
		}
		
		var check = tilemap_get_at_pixel(roomTilemap,
										 x+lengthdir_x(7, checkDir),
										 y+lengthdir_y(7, checkDir));
										 
		if (check) {
			break;
		}
		
	}
	
	if (check) {
		pathForward = true;
		dir = checkDir;
		image_angle = checkDir;
	}
}
#endregion