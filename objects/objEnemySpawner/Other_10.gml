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
	case 6:
	ds_queue_enqueue(currentWave,
				[30, spider],
				[30, spider],
				[30, spider],
				[30, spider],
				[30, spider],
				[10, spider],
				[10, spider],
				[10, spider],
				[10, spider],
				[10, spider],
				[30, lb]
				);
	break;
	case 7:
	ds_queue_enqueue(currentWave,
				[30, ant],
				[15, ant],
				[15, ant],
				[130, lb],
				[10, spider],
				[20, spider],
				[30, spider],
				[100, lb],
				[15, ant],
				[15, ant],
				[30, ant],
				[100, ant],
				[30, lb]
				);
	break;
	
	
	
	default:
	repeat(irandom_range(10+wave/2,30+wave)) {
		var timeMin = irandom_range(10, max(10,100-wave/2));
		var timeMax = irandom_range(30, min(300,10+wave*2));
		
		var en = choose(ant, ant, ant, ant, spider, ant, lb, spider);
		var ti = irandom_range(timeMin, timeMax);
		ds_queue_enqueue(currentWave, [ti, en]);
	}
	break;
}

alarm[0] = 1;