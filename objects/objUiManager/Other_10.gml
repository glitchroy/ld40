/// @description Refresh Dummy Objects

instance_destroy(objDummyUnit);

var unlocked = gameGetUnlocked();

if (array_length_1d(unlocked) > 0) {
		for (var i = 0; i < array_length_1d(unlocked); i++) {
		var unit = unlocked[i];
		
		if (unit != noone) {
			var unitX = unitSelectorX+unitSelectorPadding*i;
			var unitY = unitSelectorY;
			
			// Create Instance
			var dummy = instance_create_layer(unitX,
											  unitY,
											  layerEntities,
											  objDummyUnit);

			dummy.unit = unit;
			dummy.sprite_index = object_get_sprite(unit);
		}
	}
}