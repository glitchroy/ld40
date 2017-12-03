if (stateNew) {
	
	with (objUnit) {
		stateSwitch("Attack");
	}
	
	gameSetEnemyWave();
	
	with (uiGetManager()) {
		buttonSetActivate(buttonWave, false);
	}
}

if (hp <= 0) {
	stateSwitch("GameOver");
}

var waveOver = false;
with (objEnemySpawner) {
	if (ds_queue_empty(currentWave) &&
		instance_exists(objEnemy) == false) {
		
		waveOver = true;
		
	}
}

if (waveOver) stateSwitch("Building");