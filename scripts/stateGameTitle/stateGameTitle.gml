if (stateNew) {
	audio_play_sound(sndMainMenu, 1, true);
	stateVar[0] = 10; //timer
	randomize();
	stateVar[1] = false; //timer
}

if (stateVar[0] > 0) {
	stateVar[0]--;
} else {
	if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left)) {
		
	}
	
	if (keyboard_check_released(vk_anykey) || mouse_check_button_released(mb_left)) {
		if (keyboard_check_released(ord("R")) == false && keyboard_check_released(ord("M")) == false) {
			room_goto(roomWave1);
			stateSwitch("Info");
			instance_create_layer(0, 0, layerTechnical, objUiManager);
			audio_play_sound(sndFileSelect, 1, false);
			audio_stop_sound(sndMainMenu);
		}
	}
}