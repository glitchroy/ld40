draw_sprite(sprHudBase, -1, 0, 0);

var unlocked = gameGetUnlocked();

#region Draw Objects Unlocked

if (array_length_1d(unlocked) > 0) {
		for (var i = 0; i < array_length_1d(unlocked); i++) {
		var unit = unlocked[i];
		
		if (unit != noone) {
			var unitX = unitSelectorX+unitSelectorPadding*i;
			var unitY = unitSelectorY;
			
			var scaling = unitHovering ? 2 : 0;
			
			draw_sprite_ext(
				object_get_sprite(unit),
				-1,
				unitX - scaling/2,
				unitY - scaling/2,
				1 + scaling/10,
				1 + scaling/10,
				0, c_white, 1
			);
			
			if (unitHovering == unit) {
				draw_sprite(
					sprHudTooltip,
					-1,
					6+unitX,
					6+unitY
				);
				
				draw_set_font(fontSmall);
				draw_set_color(c_white);
				
				var text = "???";				
				switch (unitHovering) {
					case objUnit1: text =  "Tester\nPower: 99\nSpeed: 99"; break;
				}
				
				draw_text_ext(
					unitX - 16,
					unitY - sprite_get_yoffset(sprHudTooltip) + 6,
					text, 9, -1);
			}
		}
	}
}
#endregion