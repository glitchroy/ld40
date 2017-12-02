with (gameGet()) {
	for (var i = 0; i < array_length_1d(unlocked); i++) {
		if (unlocked[i] == argument0) {
			alreadyUnlocked = true;
			return true; //already unlocked
		}
	}
	log("Unlocked Unit");
	unlocked[array_length_1d(unlocked)] = argument0;
}

with (uiGetManager()) {
	event_user(0);
}