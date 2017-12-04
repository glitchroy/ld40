if (stateName == "Title") {
	draw_set_font(fontBig);
	;
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	titleTimer++;
	var yy = 114 + sin(titleTimer*0.2)*1
	draw_set_color(c_black)
	draw_text(120, yy+1, "Press any key!");
	draw_set_color(c_white)
	draw_text(120, yy, "Press any key!");
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}