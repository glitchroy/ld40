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
	AimRandomly
}

enum Unit {
	Toaster,
	WashingMachine,
	Microwave,
	Oven,
	Fridge
}

switch (argument0) {
	case Unit.Toaster: 
		return ["Toaster",
				"\nFires toast\nat ants.\nSPD: Slow\nDMG:\nA bit\nCOOLDOWN:\nMedium",
				15,
				sprUnitToaster, sprProjectileToast,
				[0.8, 1.2], [1, 2], [1, 1], [40, 75],
				tileSize*4, 45, true, false,
				false, true]; break;
	case Unit.WashingMachine: 
		return ["Washer",
				"\nRandomly splashes\nwater.\nSPD: Fast\nDMG: Not\nmuch\nCOOLDOWN:\nFast",
				30,
				sprUnitWashingMachine, sprProjectileWater,
				[2, 3], [1, 1], [1, 4], [15, 30],
				tileSize*2, 360, false, false,
				true, true]; break;
	case Unit.Oven: 
		return ["Oven",
				"\nPower: 99\nSpeed: 99",
				50,
				sprUnitOven, sprProjectileFire,
				[1, 1], [2, 4], [8, 8], [150, 200],
				tileSize*3, 360, false, false,
				true, false]; break;
}

return -1;