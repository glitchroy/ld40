if (spd > 0) {
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
	
	distance += spd;
	if (distance > range) {
		instance_destroy();
	}
}

var enemyCheck = instance_place(x, y, objEnemy);
if (enemyCheck != noone) {
	with (enemyCheck) {
		hp--;
		damageFlashTimer = damageFlashTimerMax;
	}
	instance_destroy();
}