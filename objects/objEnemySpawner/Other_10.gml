/// @description Set wave

ds_queue_clear(currentWave);

var wave = gameGetWave();

switch (wave) {
	case 1:
	ds_queue_enqueue(currentWave,
				[1,   objEnemy1],
				[60,  objEnemy1],
				[60,  objEnemy1],
				[120, objEnemy1],
				[30,  objEnemy1],
				[30,  objEnemy1],
				[30,  objEnemy1],
				[30,  objEnemy1],
				[60,  objEnemy1],
				[60,  objEnemy1],
				[120, objEnemy1],
				[30,  objEnemy1],
				[30,  objEnemy1],
				[30,  objEnemy1]
				);
	break;
	case 2:
	ds_queue_enqueue(currentWave,
				[1,   objEnemy1],
				[1,  objEnemy1],
				[1,  objEnemy1],
				[1, objEnemy1],
				[1,  objEnemy1],
				[1,  objEnemy1],
				[1,  objEnemy1],
				[1,  objEnemy1],
				[1,  objEnemy1],
				[1,  objEnemy1],
				[1, objEnemy1],
				[1,  objEnemy1],
				[1,  objEnemy1],
				[1,  objEnemy1]
				);
	break;
	default:
	ds_queue_enqueue(currentWave,
				[1,   objEnemy1]
				);
	break;
}

alarm[0] = 1;