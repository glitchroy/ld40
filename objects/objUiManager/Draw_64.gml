if (room == roomTitle) exit;

draw_sprite(sprHudBase, -1, 0, 0);

var unlocked = gameGetUnlocked();

#region Draw Tooltip

if (unitHovering != noone) {
	
	var tx = 2;
	var ty = 79;
	
	draw_sprite(sprHudTooltip, -1, tx, ty);
	
	draw_sprite(sprTooltipArrow, -1, unitHovering.x, unitHovering.y-14);
	
	var stats = unitGetStats(unitHovering.unit);
	
	draw_set_font(fontSmall);
	draw_set_color(c_white);
	
	var tooltip = stats[UnitStat.Name] + 
				  " (Price: " + string(stats[UnitStat.Cost]) + ") - " +
				  stats[UnitStat.Tooltip];
	
	draw_text_ext(
		tx + 4,
		ty,
		tooltip, 10, -1);

}

#endregion

#region Draw Information

draw_set_font(fontBig);
draw_set_color($442B26);

var str = "Wave " + string_format(gameGetWave(), 2, 0) +
		  " | Money: " + string_format(gameGetMoney(), 3, 0) + 
		  " | Health: " + string(gameGetHealth());
draw_text(7, 1, str);

#endregion