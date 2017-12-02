if (stateNew) {
	log("Building");
	gameUnlockUnit(objUnit1);
	stateVar[0] = noone; //dragging unit
}

//unit dragging
var checkDummy = noone;

if (mouse_check_button_pressed(mb_left)) {
	
	checkDummy = instance_position(mouseGetX(),
								   mouseGetY(),
								   objDummyUnit);
	if (checkDummy != noone) {
		stateVar[0] = instance_create_layer(mouseGetX()-6,
											mouseGetY()-6,
											layerEntities,
											checkDummy.unit);
	}
}

if (mouse_check_button(mb_left)) {
	
	if (stateVar[0] != noone) {
		stateVar[0].x = mouseGetX()-6;
		stateVar[0].y = mouseGetY()-6;
		//check if placing is possible
		var tilemap = roomTilemap;
		var cx = camera_get_view_x(view_camera[0]);
		var cy = camera_get_view_y(view_camera[0]);
		
		with (stateVar[0]) {
			//check collision with path
			var colPath =
				tilemap_get_at_pixel(tilemap, bbox_left+cx, bbox_top+cy) ||
				tilemap_get_at_pixel(tilemap, bbox_right+cx, bbox_top+cy) ||
				tilemap_get_at_pixel(tilemap, bbox_left+cx, bbox_bottom+cy) ||
				tilemap_get_at_pixel(tilemap, bbox_right+cx, bbox_bottom+cy)
				
			var colUnits = place_meeting(x, y, objUnit);
				
			if (!colPath && !colUnits) {
					placePossible = true;
				} else {
					placePossible = false;
				}
		}
	}
}

if (mouse_check_button_released(mb_left)) {
	if (stateVar[0] != noone) {
		
		if (stateVar[0].placePossible) {
			//IS PLACED
			//translate gui mouse to room position
			stateVar[0].x += camera_get_view_x(view_camera[0]);
			stateVar[0].y += camera_get_view_y(view_camera[0]);
			
			stateVar[0].depth = layer_get_depth(layerEntities) - stateVar[0].y;
			stateVar[0].placed = true;
		} else {
			//ILLEGAL PLACE
			instance_destroy(stateVar[0]);
		}
		stateVar[0] = noone;
	}
}