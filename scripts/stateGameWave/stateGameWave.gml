if (stateNew) {
	
	with (objUnit) {
		stateSwitch("Attack");
	}
	
	with (objEnemySpawner) {
		alarm[0] = 1;
	}
	
}

if (hp <= 0) {
	stateSwitch("GameOver");
}