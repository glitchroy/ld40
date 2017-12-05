if (stateNew) {
	stateVar[0] = false; //this unit is selected (lmb)
	stateVar[1] = false; //began deletion
}


if (mouse_check_button_pressed(mb_any)) {
	stateVar[0] = instance_position(mouseGetX(), mouseGetY(), objUnit) == id
}

#region Change Direction
	//coneDirection = (coneDirection+1) mod 360
	if (canEditCone) {
		
		if (stateVar[0] && mouse_check_button(mb_left)) {
			coneDirection = point_direction(x+6, y+6, mouseGetX(), mouseGetY());
		}
		
		if (mouse_check_button_released(mb_left)) {
			stateVar[0] = false;
		}
		
	}
#endregion

#region Deletion
	if (stateVar[0] && mouse_check_button_pressed(mb_right)) {
		stateVar[1] = true;
	}
	
	if (stateVar[0] && stateVar[1] && mouse_check_button_released(mb_right)) {
		if (instance_position(mouseGetX(), mouseGetY(), objUnit) == id) {
			gameAddMoney(stats[UnitStat.Cost]/2);
			instance_destroy(id);
			explosionCreate(x, y);
		}
	}
	
	if (stateVar[0] == false) {
		stateVar[1] = false;
	}
#endregion