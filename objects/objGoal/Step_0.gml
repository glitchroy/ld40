var enemyCheck = instance_place(x, y, objEnemy)

if (enemyCheck != noone) {
	gameAddHealth(-(enemyCheck.damage));
	instance_destroy(enemyCheck);
}