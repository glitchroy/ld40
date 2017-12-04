if (stateNew) {
	audio_stop_sound(sndBuildMode);
	audio_play_sound(sndAntMarch, 1, true);
	
	
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