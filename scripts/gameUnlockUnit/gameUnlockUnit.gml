
log("Unlocked Unit");

with (gameGet()) {
	unlocked[array_length_1d(unlocked)] = argument0;
}

with (uiGetManager()) {
	event_user(0);
}