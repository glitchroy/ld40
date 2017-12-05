enum UnitStat {
	Name,
	Tooltip,
	Cost,
	Sprite,
	ProjectileSprite,
	AttackSpeed,
	AttackDamage,
	AttackAmount,
	AttackInterval,
	ConeLength,
	ConeWidth,
	ConeEditable,
	AimAutomatic,
	AimAutoActivate,
	AimRandomly,
	FreezeEffect,
	PiercingEffect
}

enum Unit {
	Toaster,
	WashingMachine,
	Oven,
	Fridge,
	Microwave
}

switch (argument0) {
	case Unit.Toaster: 
		return ["Toaster",
				"Spits out pieces of toast.\nSPD: Slow, DMG: A bit, COOLDOWN: Medium",
				25,
				sprUnitToaster, sprProjectileToast,
				[1.4, 2.0], [20, 25], [1, 1], [25, 35],
				tileSize*4, 45, true, false,
				false, true, false, false]; break;
	case Unit.WashingMachine: 
		return ["Washer",
				"Randomly splashes water.\nSPD: Fast, DMG: Not much, COOLDOWN: Fast",
				30,
				sprUnitWashingMachine, sprProjectileWater,
				[2, 3], [10, 15], [1, 4], [15, 30],
				tileSize*3, 360, false, false,
				true, true, false, false]; break;
	case Unit.Oven: 
		return ["Oven",
				"Big radius, all around.\nSPD: Slow, DMG: Lots, COOLDOWN: Slow",
				60,
				sprUnitOven, sprProjectileFire,
				[1, 1], [30, 40], [8, 8], [150, 200],
				tileSize*3, 360, false, false,
				true, false, false, false]; break;
	case Unit.Fridge: 
		return ["Fridge",
				"Slows ants down.\nSPD: Very Fast, DMG: None, COOLDOWN: None",
				75,
				sprUnitFridge, sprProjectileFrost,
				[2, 2.5], [0, 0], [4, 6], [5, 5],
				tileSize*4, 90, true, false,
				false, true, true, true]; break;
	case Unit.Microwave: 
		return ["Microwave",
				"Aims rays at ants.\nSPD: Fast, DMG: Little, COOLDOWN: Very Fast",
				85,
				sprUnitMicrowave, sprProjectileRay,
				[3, 3.5], [3, 4], [1, 1], [9, 13],
				tileSize*2.5, 360, false, true,
				true, false, false, false]; break;
}
return -1;