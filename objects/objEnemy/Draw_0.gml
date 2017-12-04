if (damageFlash && !freezing) {
	image_blend = $6666FF;
} else {
	image_blend = c_white;
}

if (freezing) {
	image_blend = c_aqua;
}

draw_self();

draw_healthbar(x-6, y+4, x+6, y+5, (hp/maxHp)*100,
			   c_black, c_red, c_green, 0, true, true)
			   
/*
draw_set_color(c_white);
draw_text(x, y, dir);

var rightOfMe = abs((dir+270) mod 360);
var leftOfMe = abs((dir+90) mod 360);
var checkDir;

draw_set_color(c_green);
draw_circle(x+lengthdir_x(7, rightOfMe),
			y+lengthdir_y(7, rightOfMe),
			3,
			false)
			
draw_set_color(c_blue);
draw_circle(x+lengthdir_x(7, leftOfMe),
			y+lengthdir_y(7, leftOfMe),
			1,
			false)
			

var xx = x;
var yy = y;
switch (dir) {
	case Direction.Left:	xx -= 7; break;
	case Direction.Right:	xx += 7; break;
	case Direction.Down:	yy += 7; break;
	case Direction.Up:		yy -= 7; break;
}

draw_set_color(c_maroon);
draw_circle(xx, yy, 1, false);