if (stateNew) {
	stateVar[0] = random_range(attackInterval[0],
							   attackInterval[1]); //attack timer
}

if (projectileSprite != -1) {
	
	if (stateVar[0] > 0) {
		stateVar[0]--;
	}
	
	if (stateVar[0] <= 0) {
		//ATTACK
		if (aimAuto) {
		
		} else {
			//random aim
			repeat (irandom_range(attackAmount[0], attackAmount[1])) {
			projectileCreate(x+6, y+6,
							 projectileSprite,
							 random_range(coneDirection-coneWidth/2, coneDirection+coneWidth/2),
							 random_range(attackSpeed[0], attackSpeed[1]),
							 coneLength);
			}
		}
		
	stateVar[0] = random_range(attackInterval[0],
							   attackInterval[1]); //attack timer
		
	}
	
}