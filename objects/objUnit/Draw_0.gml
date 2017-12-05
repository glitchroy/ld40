
//Draw Cone
if (placed) {
	draw_set_color(c_lime);
	if (stateName == "Attack") draw_set_color(c_red);
	draw_set_alpha(0.33);

	if (coneWidth == 360) {
		//circle
		drawCircleWidth(x+6, y+6, coneLength, 3, 24*displayGetScale());
		
	} else {
		//cone
		drawCone(x+6,
			y+6,
			coneDirection,
			coneLength,
			coneWidth);
	}
	draw_set_alpha(1);
}

//Draw Sprite
if (placed) {
	
	if (stateName == "Edit" && instance_position(mouseGetX(), mouseGetY(), object_index) == id) {
		//my boy is hovering
		shader_set(shaderOutline);
		shader_set_uniform_f(upixelW, texelW);
		shader_set_uniform_f(upixelH, texelH);
	}
	
	draw_self();
	
	shader_reset();
}