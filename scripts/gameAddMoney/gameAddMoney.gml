///@function gameAddMoney(number, sound?)
///@desc Adds amount to money

var sound = true;
if (argument_count > 1) {
	sound = argument[1];
}

if (argument[0] > 0 && sound) {
	audio_play_sound(sndGetMoney, 1, false);
}

with (gameGet()) {
	money += argument[0];
}