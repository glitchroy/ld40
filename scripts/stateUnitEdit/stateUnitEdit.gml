if (stateNew) {
	stateVar[0] = false; //this unit is selected
}

#region Change Direction
	//coneDirection = (coneDirection+1) mod 360
	if (canEditCone) {
		
		if (mouse_check_button_pressed(mb_left)) {
			stateVar[0] = instance_position(mouseGetX(), mouseGetY(), objUnit) == id
		}
		
		if (stateVar[0] && mouse_check_button(mb_left)) {
			coneDirection = point_direction(x+6, y+6, mouseGetX(), mouseGetY());
		}
		
		if (mouse_check_button_released(mb_left)) {
			stateVar[0] = false;
		}
		
	}
#endregion