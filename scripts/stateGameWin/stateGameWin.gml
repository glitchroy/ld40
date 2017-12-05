if (mouse_check_button(mb_left)) {
	audio_play_sound(sndConfirm, 1, false);
	global.won = true;
	with (gameGet()) {
		wave--;
	}
	stateSwitch("Building");
}