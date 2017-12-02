//Draw Sprite
if (placed) {
	draw_self();
}

//Draw Cone
if (placed && stateName == "Edit") {
	draw_set_color(c_red);
	draw_set_alpha(0.5);
	drawCone(x+6, y+6, coneDirection, coneLength, coneWidth);
	draw_set_alpha(1);
}