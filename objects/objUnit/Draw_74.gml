//Draw Cone when placing down
if (!placed) {
	draw_set_color(c_lime);
	if (stateName == "Attack") draw_set_color(c_red);
	draw_set_alpha(0.33);

	if (coneWidth == 360) {
		//circle
		draw_circle(x+6, y+6, coneLength, false);
		
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