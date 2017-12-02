draw_set_color(c_black);
draw_set_font(fontSmall);
var s =
	     "state:" + stateName +
	   "\nwave: " + string(wave) + 
	   "\nmoney: " + string(money) +
	   "\nhealth: " + string(hp);
draw_text(2, 2, s);