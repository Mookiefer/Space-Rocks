/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 7545CE44
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1A4E3064
/// @DnDArgument : "obj" "obj_ship"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_ship"
var l1A4E3064_0 = false;
l1A4E3064_0 = instance_exists(obj_ship);
if(!l1A4E3064_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 75E5AD02
	/// @DnDParent : 1A4E3064
	exit;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 25BB3942
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
/// @DnDHash : 13EC50AF
/// @DnDArgument : "var" "dist"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "250"
if(dist < 250)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 06E846C5
	/// @DnDInput : 4
	/// @DnDParent : 13EC50AF
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
	/// @DnDHash : 0575D316
	/// @DnDParent : 13EC50AF
	/// @DnDArgument : "angle" "dir"
	image_angle = dir;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 461A646D
	/// @DnDParent : 13EC50AF
	/// @DnDArgument : "expr" "dir"
	/// @DnDArgument : "var" "direction"
	direction = dir;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 215F4D24
	/// @DnDParent : 13EC50AF
	/// @DnDArgument : "var" "dist"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "150"
	if(dist < 150)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D817B4B
		/// @DnDParent : 215F4D24
		/// @DnDArgument : "expr" "-0.05"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "speed"
		speed += -0.05;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 04086D2A
	/// @DnDParent : 13EC50AF
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6722528B
		/// @DnDParent : 04086D2A
		/// @DnDArgument : "expr" "0.01"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "speed"
		speed += 0.01;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D99F84D
	/// @DnDParent : 13EC50AF
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "bulletCounter"
	bulletCounter += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 197B630D
	/// @DnDParent : 13EC50AF
	/// @DnDArgument : "var" "bulletCounter"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "40"
	if(bulletCounter >= 40)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0E453DBF
		/// @DnDParent : 197B630D
		/// @DnDArgument : "var" "bulletCounter"
		bulletCounter = 0;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 497A7A47
		/// @DnDInput : 2
		/// @DnDParent : 197B630D
		/// @DnDArgument : "function" "create_bullet"
		/// @DnDArgument : "arg" "dir"
		/// @DnDArgument : "arg_1" "8"
		create_bullet(dir, 8);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 36D86F67
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BDB08FF
	/// @DnDParent : 36D86F67
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "speed"
	speed = 2;
}