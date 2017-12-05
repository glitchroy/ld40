if (stateNew) {
	audio_stop_sound(sndAntMarch);
	if (audio_is_playing(sndBuildMode) == false) {
		audio_play_sound(sndBuildMode, 1, true);
	}
	global.speedMode = false;
	stateVar[0] = noone; //dragging unit
	hp = clamp(hp+15, 0, 100);
	
	gameAwardMoney(wave);
	
	wave++;
	
	instance_destroy(objEnemy);
	
	with (objUnit) {
		stateSwitch("Edit");
	}
	
	with (objEnemySpawner) {
		alarm[0] = -1;
	}
	
	with (uiGetManager()) {
		buttonSetActivate(buttonWave, true);
	}
}

#region Unit Placement
var checkDummy = noone;

//clicking on dummy
if (mouse_check_button_pressed(mb_left)) {
	
	checkDummy = instance_position(mouseGetGuiX(),
								   mouseGetGuiY(),
								   objDummyUnit);
	if (checkDummy != noone) {
		var stats = unitGetStats(checkDummy.unit);

		if (gameGetMoney() >= stats[UnitStat.Cost]) {
			audio_play_sound(sndSelect, 1, false);
			stateVar[0] = unitCreate(mouseGetGuiX()-6,
									 mouseGetGuiY()-6,
									 checkDummy.unit);
		}
	}
}

//dragging new instance
if (mouse_check_button(mb_left)) {
	
	if (stateVar[0] != noone) {
		stateVar[0].x = mouseGetGuiX()-6;
		stateVar[0].y = mouseGetGuiY()-6;
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
				
			var colUnits = place_meeting(x+cx, y+cy, objUnit);
				
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
			
			stateVar[0].depth = layer_get_depth(layerUnits) - stateVar[0].y;
			stateVar[0].placed = true;
			
			var stats = stateVar[0].stats;
			gameAddMoney(-(stats[UnitStat.Cost]));
			
			audio_play_sound(sndPlaced, 1, false);
			
		} else {
			//ILLEGAL PLACE
			instance_destroy(stateVar[0]);
		}
		stateVar[0] = noone;
	}
}
#endregion


if (keyboard_check_pressed(vk_space)) {
	stateSwitch("Wave");
}