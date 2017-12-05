var enemyCheck = instance_place(x, y, objEnemy)

if (enemyCheck != noone) {
	gameAddHealth(-(enemyCheck.damage));
	audio_play_sound(sndHit, 1, false);
	instance_destroy(enemyCheck);
	displayShakeScreen();
}