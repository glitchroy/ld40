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
		if (aimAutoActivate || aimAuto) {
			shouldFire = false;

			var nearestEnemy = instance_nearest(x+6, y+6, objEnemy);
			
			if (nearestEnemy != noone) {
				
				var dist = point_distance(
							x+6, y+6,
							nearestEnemy.x,
							nearestEnemy.y);
				
				if (coneWidth >= 360) {
					//circle units
					if (dist <= coneLength*activationRadiusScale) {
						shouldFire = true;
					} else {
						stateVar[0] = 5; //redo
					}
				} else {
					//sight cone
					//calc if enemy is inside cone, too
					var ang = point_direction(x+6, y+6, nearestEnemy.x, nearestEnemy.y);
					
					var leftAngle = (coneDirection-coneWidth/2) mod 360;
					var rightAngle = (coneDirection+coneWidth/2) mod 360;
					
					var leftCheck = abs(angle_difference(leftAngle, ang));
					var rightCheck = abs(angle_difference(rightAngle, ang));
					
					
					if (leftCheck+rightCheck <= coneWidth) {
							shouldFire = true;
					} else {
						stateVar[0] = 5; //redo
					}
				}
				
				
			}
		}
		
		//ATTACK
		if (shouldFire) {
			if (aimAuto) {
				//auto aim
				var nearestEnemy = instance_nearest(x+6, y+6, objEnemy);
				var dir = 0;
				if (nearestEnemy != noone) {
					dir = point_direction(x+6, y+6, nearestEnemy.x, nearestEnemy.y);
				}
				
				
				repeat (irandom_range(attackAmount[0], attackAmount[1])) {
					projectileCreate(x+6, y+6,
										projectileSprite,
										dir,
										random_range(attackSpeed[0], attackSpeed[1]),
										coneLength,
										irandom_range(attackDamage[0], attackDamage[1]),
										hasFreezeEffect,
										hasPiercingEffect);
				}
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
										 hasFreezeEffect,
										 hasPiercingEffect);
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
										 hasFreezeEffect,
										 hasPiercingEffect);
					}
				}
			}
			
		stateVar[0] = random_range(attackInterval[0],
							attackInterval[1]); //attack timer
		
		}
		
	}
	
}