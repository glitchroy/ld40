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
				"\nFires toast\nat ants.\nSPD: Slow\nDMG:\nA bit\nCOOLDOWN:\nMedium",
				15,
				sprUnitToaster, sprProjectileToast,
				[1.4, 2.0], [20, 25], [1, 1], [40, 75],
				tileSize*4, 45, true, false,
				false, true, false, false]; break;
	case Unit.WashingMachine: 
		return ["Washr",
				"\nRandomly\nsplashes.\nSPD: Fast\nDMG: Not\nmuch\nCOOLDOWN:\nFast",
				30,
				sprUnitWashingMachine, sprProjectileWater,
				[2, 3], [10, 15], [1, 4], [15, 30],
				tileSize*3, 360, false, false,
				true, true, false, false]; break;
	case Unit.Oven: 
		return ["Oven",
				"\nBig radius,\nall around.\nSPD: Slow\nDMG: Fair\nbit\nCOOLDOWN:\nSlow",
				50,
				sprUnitOven, sprProjectileFire,
				[1, 1], [30, 40], [8, 8], [150, 200],
				tileSize*3, 360, false, false,
				true, false, false, false]; break;
	case Unit.Fridge: 
		return ["Fridge",
				"\nSlows ants down.\nSPD: Fast\nDMG: None\nCOOLDOWN:\nNone",
				75,
				sprUnitFridge, sprProjectileFrost,
				[2, 2.5], [0, 0], [4, 6], [5, 5],
				tileSize*4, 90, true, false,
				true, true, true, true]; break;
	case Unit.Microwave: 
		return ["Mcrwav",
				"\nAims rays\nat ants.\nSPD: V. Fast\nDMG: Little\nCOOLDOWN:\nFast",
				75,
				sprUnitMicrowave, sprProjectileRay,
				[3, 3.5], [2, 3], [1, 1], [13, 15],
				tileSize*2.5, 360, false, true,
				true, false, false, true]; break;
}
return -1;