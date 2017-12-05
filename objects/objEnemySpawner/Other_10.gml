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
	case 3:
	ds_queue_enqueue(currentWave,
				[10,  ant],
				[20,  ant],
				[20,  ant],
				[60,  ant],
				[300,  lb],
				[120,  lb],
				[120,  ant],
				[120,  ant],
				[200,  ant],
				[60,  ant],
				[120,  ant],
				);
	break;
	case 4:
	ds_queue_enqueue(currentWave,
				[10,  ant],
				[20,  spider],
				[200,  ant],
				[20,  ant],
				[20,  ant],
				[300, spider],
				[10, spider],
				[200, ant],
				[120, lb],
				[60,  ant],
				[60,  ant],
				[120, spider],
				[20,  ant],
				);
	break;
	case 5:
	ds_queue_enqueue(currentWave,
				[20,  lb],
				[120, lb],
				[120, lb],
				[20,  ant],
				[20,  ant],
				[300,  ant],
				[30, spider],
				[120, lb],
				[20, spider],
				[20,  ant],
				[20,  ant]
				);
	break;
	
	
	
	
	
	default:
	ds_queue_enqueue(currentWave,
				[1,   objEnemyNormal]
				);
	break;
}

alarm[0] = 1;