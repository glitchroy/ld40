///@function uiGetManager();

if (instance_exists(objUiManager)) {
	return objUiManager;
} else {
	return instance_create_layer(0,
								 0,
								 objUiManager,
								 layerTechnical)
}