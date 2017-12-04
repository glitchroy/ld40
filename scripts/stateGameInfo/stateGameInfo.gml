if (stateNew) {
	audio_play_sound(sndBuildMode, 1, true);
}

if (mouse_check_button(mb_left)) {
	audio_play_sound(sndConfirm, 1, false);
	stateSwitch("Building");
}