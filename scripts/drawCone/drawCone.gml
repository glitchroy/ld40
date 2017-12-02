///@function drawCone(x,y,direction,length,width)
///Script adapted by Jaqueta https://forum.yoyogames.com/index.php?threads/solved-vision-cone.961/#post-7472"
///@param x
///@param y
///@param direction
///@param length
///@param width

var xx=argument0;
var yy=argument1;
var dir=argument2-(argument4/2);
var lng=argument3;
var ang=argument4;
var steps=12;

var pr=pr_trianglefan;
draw_primitive_begin(pr);
draw_vertex(xx,yy);

for(i=0; i<=steps; i++){
	draw_vertex(xx+lengthdir_x(lng,dir+(ang*i/steps)),yy+lengthdir_y(lng,dir+(ang*i/steps)));
}

draw_primitive_end();