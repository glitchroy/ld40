if (spd > 0) {
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
	
	distance += spd;
	if (distance > range) {
		instance_destroy();
	}
}


var damage = dmg;
var hasFreeze = freeze;

var enemyCheck = instance_place(x, y, objEnemy);
if (enemyCheck != noone) {
	with (enemyCheck) {
		hp-=damage;
		damageFlashTimer = damageFlashTimerMax;
		if (hasFreeze) {
			freezing = true;
			
			if (freezeTimer <= 0) {
				freezeTimer = freezeTimerMax;
			}
		}
	}

	if (!piercing) {
		instance_destroy();
	}
}