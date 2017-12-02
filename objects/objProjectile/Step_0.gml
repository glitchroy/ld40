if (spd > 0) {
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
	
	distance += spd;
	if (distance > range) {
		instance_destroy();
	}
}