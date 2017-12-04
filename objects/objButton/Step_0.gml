if (gameGetState() == "Info") {
	hovering = false;
	pressed = false;
	exit;
}

if (activated == false) {
	hovering = false;
	pressed = false;
	exit;
}

hovering = point_in_rectangle(
			mouseGetGuiX(),
			mouseGetGuiY(),
			x,
			y,
			x + sprite_get_width(sprite_index),
			y + sprite_get_height(sprite_index)
		   )

pressed = hovering && mouse_check_button(mb_left);

//index
image_index = pressed + hovering*2

//callback
if (hovering && pressed) {
	waitingForRelease = true;
}

if (waitingForRelease && hovering && mouse_check_button_released(mb_left)) {
	script_execute(callback);
	audio_play_sound(sndButton, 1, false);
	waitingForRelease = false;
}