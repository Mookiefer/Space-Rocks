/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2F46E045
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 49F7D058
/// @DnDArgument : "expr" "HP-1"
/// @DnDArgument : "var" "image_index"
image_index = HP-1;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7CDBA991
/// @DnDArgument : "obj" "obj_ship"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_ship"
var l7CDBA991_0 = false;
l7CDBA991_0 = instance_exists(obj_ship);
if(!l7CDBA991_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 6AE452A1
	/// @DnDParent : 7CDBA991
	exit;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 789EC1B0
/// @DnDInput : 4
/// @DnDArgument : "var" "dist"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "point_distance"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "obj_ship.x"
/// @DnDArgument : "arg_3" "obj_ship.y"
var dist = point_distance(x, y, obj_ship.x, obj_ship.y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 476DEB38
/// @DnDArgument : "var" "dist"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "250"
if(dist < 250)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0007C4D1
	/// @DnDInput : 4
	/// @DnDParent : 476DEB38
	/// @DnDArgument : "var" "dir"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "point_direction"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "obj_ship.x"
	/// @DnDArgument : "arg_3" "obj_ship.y"
	var dir = point_direction(x, y, obj_ship.x, obj_ship.y);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 351B4716
	/// @DnDParent : 476DEB38
	/// @DnDArgument : "angle" "dir"
	image_angle = dir;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1CCB83DE
	/// @DnDParent : 476DEB38
	/// @DnDArgument : "expr" "dir"
	/// @DnDArgument : "var" "direction"
	direction = dir;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 772E0C4A
	/// @DnDParent : 476DEB38
	/// @DnDArgument : "expr" "0.01"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "speed"
	speed += 0.01;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2B7510DB
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 037A8C1B
	/// @DnDParent : 2B7510DB
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "speed"
	speed = 1;
}