stateExecute();

if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

if (keyboard_check_pressed(vk_space)) {
	
	switch (stateName) {
		case "Wave": stateSwitch("Building"); break;
		case "Building": stateSwitch("Wave"); break;
	}
}