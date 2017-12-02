draw_sprite(sprHudBase, -1, 0, 0);

var unlocked = gameGetUnlocked();

#region Draw Tooltip

if (unitHovering != noone) {
	
	var tx = unitHovering.x + 6;
	var ty = unitHovering.y + 6;
	
	draw_sprite(sprHudTooltip, -1, tx, ty);
	
	var stats = getUnitStats(unitHovering.unit);
	
	draw_set_font(fontSmall);
	draw_set_color(c_white);
				
	draw_text_ext(
		tx - 23,
		ty - sprite_get_yoffset(sprHudTooltip),
		stats[Unit.Tooltip], 9, -1);

}

#endregion