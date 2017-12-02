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
	AimAutoActivate
}

enum Unit {
	Toaster,
	Microwave,
	Mixer,
	Oven,
	Fridge
}

switch (argument0) {
	case Unit.Toaster: 
		return ["Toaster", "\nPower: 99\nSpeed: 99", 15,
				sprUnitToaster, sprProjectileToast,
				[0.8, 1.2], [1, 2], [1, 1], [40, 75],
				tileSize*4, 45, true, false,
				false]; break;
	case Unit.Microwave: 
		return ["Microwave", "\nPower: 99\nSpeed: 99", 30,
				sprUnitMicrowave, sprProjectileSpark,
				[2, 3], [1, 1], [1, 4], [20, 35],
				tileSize*2, 360, false, false,
				true]; break;
}

return -1;