if (unit != undefined) {
	var stats = unitGetStats(unit);
	
	if (gameGetMoney() < stats[UnitStat.Cost]) {
		canBuy = false;
	} else {
		canBuy = true;
	}
}