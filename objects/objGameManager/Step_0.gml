stateExecute();

if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

//end wave
if (keyboard_check_pressed(ord("D"))) {
	stateSwitch("Building");
}
