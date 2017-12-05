/// @description Refresh Dummy Objects

instance_destroy(objDummyUnit);

var unlocked = gameGetUnlocked();

if (array_length_1d(unlocked) > 0) {
		for (var i = 0; i < array_length_1d(unlocked); i++) {
		var unit = unlocked[i];
		
		if (unit != noone) {
			var unitX = unitSelectorX+(tileSize+unitSelectorPadding)*i;

			// Create Instance
			var dummy = instance_create_layer(unitX,
											  unitSelectorY,
											  layerDummyUnits,
											  objDummyUnit);

			dummy.unit = unit;
			dummy.stats = unitGetStats(unit);
			dummy.sprite_index = dummy.stats[UnitStat.Sprite];
			with (dummy) event_user(0);
		}
	}
}