if (!placed) {
	draw_sprite_ext(sprite_index,
					image_index,
					x,
					y,
					image_xscale,
					image_yscale,
					image_angle,
					placePossible ? c_white : c_red,
					0.5);
					
}

//Draw Cone
if (placed) {

	draw_set_color(c_lime);
	if (stateName == "Attack") draw_set_color(c_red);
	
	draw_set_alpha(0.5);
	drawCone(x+6 - camera_get_view_x(view_camera[0]),
			 y+6 - camera_get_view_y(view_camera[0]),
			 coneDirection,
			 coneLength,
			 coneWidth);
	draw_set_alpha(1);
}
