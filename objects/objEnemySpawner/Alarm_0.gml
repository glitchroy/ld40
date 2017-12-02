if (nextSpawn != undefined && nextSpawn != noone) {
	instance_create_layer(x+6, y+6, layerEnemies, nextSpawn);
	nextSpawn = noone;
}

if (ds_queue_empty(currentWave) == false) {
	var action = ds_queue_dequeue(currentWave);
	nextSpawn = action[1];
	alarm[0] = max(1, action[0]);
} else {
	nextSpawn = noone;
}