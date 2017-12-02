///@function gameGet();

if (instance_exists(objGameManager)) {
	return instance_find(objGameManager, 0);
} else {
	error("GAME NOT FOUND");
	return -1;
}