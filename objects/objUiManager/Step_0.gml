#region Check Selected Unit
var unlocked = gameGetUnlocked();

unitHovering = noone;
if (array_length_1d(unlocked) > 0) {
	
	var check = point_in_rectangle(mouse_x, mouse_y,
					   unitSelectorX,
					   unitSelectorY,
					   unitSelectorX + nativeWidth,
					   unitSelectorY + (nativeHeight-unitSelectorY));
					   
	if (check) {
		for (var i = 0; i < array_length_1d(unlocked); i++) {
			
			var unitLeft = unitSelectorX + i*(tileSize*1.5);
			var unitTop = unitSelectorY;
			
			var check = point_in_rectangle(mouse_x, mouse_y,
										   unitLeft,
										   unitTop,
										   unitLeft + tileSize,
										   unitTop + tileSize);
										   
			if (check) {
				unitHovering = unlocked[i];
			}
			
		}
	}
	
}

#endregion