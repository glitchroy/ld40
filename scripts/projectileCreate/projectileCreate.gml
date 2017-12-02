///@function projectileCreate(x, y, sprite, direction, speed, range)
///@param x
///@param y
///@param sprite
///@param direction
///@param speed
///@param range

var p = instance_create_layer(argument0, argument1, layerProjectiles, objProjectile);
p.sprite_index = argument2;
p.dir = argument3;
p.range = argument5;

p.spd = argument4;
