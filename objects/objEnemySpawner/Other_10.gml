/// @description Set wave

ds_queue_clear(currentWave);

var wave = gameGetWave();

var ant = objEnemyNormal;
var lb = objEnemyLadybug;
var spider = objEnemySpider;

switch (wave) {
	case 1:
	ds_queue_enqueue(currentWave,
				[10,  ant],
				[200,  ant],
				[200,  ant],
				[60,  ant]
				);
	break;
	case 2:
	ds_queue_enqueue(currentWave,
				[10,  ant],
				[60,  ant],
				[300,  lb],
				[120,  ant],
				[120,  ant]
				);
	break;
	default:
	ds_queue_enqueue(currentWave,
				[1,   objEnemyNormal]
				);
	break;
}

alarm[0] = 1;