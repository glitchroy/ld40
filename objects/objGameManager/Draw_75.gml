/*draw_set_color(c_black);
draw_set_font(fontSmall);
var s =
	     "state:" + stateName +
	   "\nwave: " + string(wave) + 
	   "\nmoney: " + string(money) +
	   "\nhealth: " + string(hp);
draw_text(2, 16, s);*/

if (stateName == "Info") {
	draw_sprite(sprInfoMsg, 0, 0, 0);
}

if (stateName == "Win") {
	draw_sprite(sprInfoWin, 0, 0, 0);
}