///@function buttonCreate(x, y, sprite, callback)

var b = instance_create_layer(argument0,
							  argument1,
							  layerTechnical,
							  objButton);

b.sprite_index = argument2;
b.callback = argument3;

return b;