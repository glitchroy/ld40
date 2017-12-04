/// @description Set wave

ds_queue_clear(currentWave);

var wave = gameGetWave();

switch (wave) {
	case 1:
	ds_queue_enqueue(currentWave,
				[1,   objEnemyLadybug],
				[60,  objEnemyNormal],
				[60,  objEnemyNormal],
				[120, objEnemyNormal],
				[30,  objEnemyNormal],
				[30,  objEnemyNormal],
				[30,  objEnemyNormal],
				[30,  objEnemyNormal],
				[60,  objEnemyNormal],
				[60,  objEnemyNormal],
				[120, objEnemyNormal],
				[30,  objEnemyNormal],
				[30,  objEnemyNormal],
				[30,  objEnemyNormal]
				);
	break;
	case 2:
	ds_queue_enqueue(currentWave,
				[1,   objEnemyNormal],
				[1,  objEnemyNormal],
				[1,  objEnemyNormal],
				[1, objEnemyNormal],
				[1,  objEnemyNormal],
				[1,  objEnemyNormal],
				[1,  objEnemyNormal],
				[1,  objEnemyNormal],
				[1,  objEnemyNormal],
				[1,  objEnemyNormal],
				[1, objEnemyNormal],
				[1,  objEnemyNormal],
				[1,  objEnemyNormal],
				[1,  objEnemyNormal]
				);
	break;
	default:
	ds_queue_enqueue(currentWave,
				[1,   objEnemyNormal]
				);
	break;
}

alarm[0] = 1;