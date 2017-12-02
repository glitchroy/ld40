#region Check Selected Unit

unitHovering = noone;

var dummyCheck = instance_position(mouseGetGuiX(), mouseGetGuiY(), objDummyUnit);


if (dummyCheck != noone) {
	unitHovering = dummyCheck;
	
	dummyCheck.scale = 0;
	if (gameGetState() == "Building") {
		dummyCheck.scale = 2;
	}
} else {
	
	with (objDummyUnit) {
		scale = 0;
	}
	
}

#endregion