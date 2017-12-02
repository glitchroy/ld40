///@function displayGetManager();

if (instance_exists(objDisplayManager)) {
	return objDisplayManager;
} else {
	return instance_create_layer(0,
								 0,
								 objDisplayManager,
								 layerTechnical)
}