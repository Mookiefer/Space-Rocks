/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 24A783C8
/// @DnDInput : 2
/// @DnDArgument : "var" "xx"
/// @DnDArgument : "value" "x"
/// @DnDArgument : "var_1" "yy"
/// @DnDArgument : "value_1" "y"
var xx = x;
var yy = y;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5C00F681
/// @DnDInput : 6
/// @DnDApplyTo : {obj_camera}
/// @DnDArgument : "var" "bulletWithinCamera"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "point_in_rectangle"
/// @DnDArgument : "arg" "xx"
/// @DnDArgument : "arg_1" "yy"
/// @DnDArgument : "arg_2" "cameraX"
/// @DnDArgument : "arg_3" "cameraY"
/// @DnDArgument : "arg_4" "cameraX + cameraWidth"
/// @DnDArgument : "arg_5" "cameraY + cameraHeight"
with(obj_camera) {
	var bulletWithinCamera = point_in_rectangle(xx, yy, cameraX, cameraY, cameraX + cameraWidth, cameraY + cameraHeight);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7372786F
/// @DnDArgument : "var" "bulletWithinCamera"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(bulletWithinCamera == true))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6AE30A67
	/// @DnDParent : 7372786F
	instance_destroy();
}