/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 6D5B7073
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6831AA69
/// @DnDArgument : "obj" "obj_ship"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_ship"
var l6831AA69_0 = false;
l6831AA69_0 = instance_exists(obj_ship);
if(!l6831AA69_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3D1659BC
	/// @DnDParent : 6831AA69
	exit;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0E0CADCB
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
/// @DnDHash : 3B25E167
/// @DnDArgument : "var" "dist"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "250"
if(dist < 250)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3AB477F8
	/// @DnDInput : 4
	/// @DnDParent : 3B25E167
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
	/// @DnDHash : 0E82F8E4
	/// @DnDParent : 3B25E167
	/// @DnDArgument : "angle" "dir"
	image_angle = dir;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7767413A
	/// @DnDParent : 3B25E167
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "bulletCounter"
	bulletCounter += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A6D45AB
	/// @DnDParent : 3B25E167
	/// @DnDArgument : "var" "bulletCounter"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "60"
	if(bulletCounter >= 60)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4FEEE91C
		/// @DnDParent : 3A6D45AB
		/// @DnDArgument : "var" "bulletCounter"
		bulletCounter = 0;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 114CFCD0
		/// @DnDInput : 2
		/// @DnDParent : 3A6D45AB
		/// @DnDArgument : "function" "create_bullet"
		/// @DnDArgument : "arg" "dir"
		/// @DnDArgument : "arg_1" "4"
		create_bullet(dir, 4);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 18581D97
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 46141941
	/// @DnDParent : 18581D97
	/// @DnDArgument : "angle" "direction"
	image_angle = direction;
}