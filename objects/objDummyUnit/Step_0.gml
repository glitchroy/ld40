if (unit != undefined) {
	var stats = unitGetStats(unit);
	
	if (gameGetMoney() < stats[Unit.Cost]) {
		canBuy = false;
	} else {
		canBuy = true;
	}
}