draw_sprite(sprHudBase, -1, 0, 0);

var unlocked = gameGetUnlocked();

#region Draw Tooltip

if (unitHovering != noone) {
	
	var tx = unitHovering.x + 6;
	var ty = unitHovering.y - 8;
	
	draw_sprite(sprHudTooltip, -1, tx, ty);
	
	var stats = unitGetStats(unitHovering.unit);
	
	draw_set_font(fontSmall);
	draw_set_color(c_white);
	
	var tooltip = stats[UnitStat.Name] + 
				  " (" + string(stats[UnitStat.Cost]) + ")" +
				  "\r" +
				  stats[UnitStat.Tooltip];
	
	draw_text_ext(
		tx - 22,
		ty - sprite_get_yoffset(sprHudTooltip),
		tooltip, 10, -1);

}

#endregion

#region Draw Information

draw_set_font(fontBig);
draw_set_color($251418);

var str = "Wave " + string_format(gameGetWave(), 2, 0) + " | Health: " + string(gameGetHealth());
draw_text(7, 1, str);

#endregion