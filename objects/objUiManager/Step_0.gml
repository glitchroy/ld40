#region Check Selected Unit

unitHovering = noone;

var dummyCheck = instance_position(mouseGetX(), mouseGetY(), objDummyUnit);

if (dummyCheck != noone) {
	unitHovering = dummyCheck;
	dummyCheck.scale = 2;
} else {
	
	with (objDummyUnit) {
		scale = 0;
	}
	
}

#endregion