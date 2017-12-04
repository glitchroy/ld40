if (stateNew) {
	audio_play_sound(sndMainMenu, 1, true);
}

if (keyboard_check_released(vk_anykey) || mouse_check_button_released(mb_any)) {
	if (keyboard_check(ord("R"))) exit;
	room_goto(roomWave1);
	stateSwitch("Info");
	instance_create_layer(0, 0, layerTechnical, objUiManager);
	audio_play_sound(sndFileSelect, 1, false);
	audio_stop_sound(sndMainMenu);
	
}