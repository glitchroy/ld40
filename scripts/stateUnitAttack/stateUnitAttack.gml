if (stateNew) {
	stateVar[0] = 0 //attack timer
}

if (projectileSprite != -1) {
	
	if (stateVar[0] > 0) {
		stateVar[0]--;
	}
	
	if (stateVar[0] <= 0) {
		//check if we should attack every time
		//or only when in radius
		
		
		var shouldFire = true;
		if (aimAutoActivate) {
			shouldFire = false;

			var nearestEnemy = instance_nearest(x+6, y+6, objEnemy);
			
			if (nearestEnemy != noone) {
				if (point_distance(
						x+6, y+6,
						nearestEnemy.x,
						nearestEnemy.y) <= coneLength*activationRadiusScale) {
					
					shouldFire = true;
					
				} else {
					stateVar[0] = 5;
				}
			}
		}
		
		var t = shouldFire ? "true" : "false";
		log("should fire? " + t);
		
		//ATTACK
		if (shouldFire) {
			if (aimAuto) {
		
			} else {
				//regular or random aim
				if (aimRandomly) {
					//random aim
					repeat (irandom_range(attackAmount[0], attackAmount[1])) {
						projectileCreate(x+6, y+6,
										 projectileSprite,
										 random_range(coneDirection-coneWidth/2, coneDirection+coneWidth/2),
										 random_range(attackSpeed[0], attackSpeed[1]),
										 coneLength,
										 irandom_range(attackDamage[0], attackDamage[1]),
										 hasFreezeEffect);
					}
				} else {
					//aim predictably
					var amount = irandom_range(attackAmount[0], attackAmount[1]);
					var step = coneWidth/amount;
					
					for (var i = coneDirection; i < coneDirection+coneWidth; i+=step) {
						projectileCreate(x+6+lengthdir_x(1, i),
										 y+6+lengthdir_y(1, i),
										 projectileSprite,
										 i,
										 random_range(attackSpeed[0], attackSpeed[1]),
										 coneLength,
										 irandom_range(attackDamage[0], attackDamage[1]),
										 hasFreezeEffect);
					}
				}
			}
			
		stateVar[0] = random_range(attackInterval[0],
							attackInterval[1]); //attack timer
		
		}
		
	}
	
}