if (stateNew) {
	
	with (objUnit) {
		stateSwitch("Attack");
	}
	
	with (objEnemySpawner) {
		alarm[0] = 1;
	}
	
}