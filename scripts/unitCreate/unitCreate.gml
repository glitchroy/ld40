///@function unitCreate(x, y, type);
///@param x
///@param y
///@param type

var type = argument2;
var st = unitGetStats(type);

if (st != -1) {

	var u = instance_create_layer(argument0, argument1,
								  layerUnits,
								  objUnit);
								  
	with (u) {
		stats = st;
		sprite_index = st[UnitStat.Sprite];
		projectileSprite = st[UnitStat.ProjectileSprite];
		attackSpeed		 = st[UnitStat.AttackSpeed];
		attackDamage	 = st[UnitStat.AttackDamage];
		attackAmount	 = st[UnitStat.AttackAmount];
		attackInterval	 = st[UnitStat.AttackInterval];
		coneLength		 = st[UnitStat.ConeLength];
		coneWidth		 = st[UnitStat.ConeWidth];
		canEditCone		 = st[UnitStat.ConeEditable];
		aimAuto			 = st[UnitStat.AimAutomatic];
		aimAutoActivate	 = st[UnitStat.AimAutoActivate];
		aimRandomly		 = st[UnitStat.AimRandomly];
		hasFreezeEffect  = st[UnitStat.FreezeEffect];
		hasPiercingEffect= st[UnitStat.PiercingEffect];
		event_user(0); //shader outline
	}
	
	return u;
}

return noone;