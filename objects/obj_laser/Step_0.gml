/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0E3D5BDE
/// @DnDApplyTo : creator
/// @DnDArgument : "obj" "obj_ship"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_ship"
var l0E3D5BDE_0 = false;
with(creator) l0E3D5BDE_0 = instance_exists(obj_ship);
if(!l0E3D5BDE_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 239A3193
	/// @DnDParent : 0E3D5BDE
	exit;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2506659C
/// @DnDInput : 3
/// @DnDArgument : "expr" "creator.x"
/// @DnDArgument : "expr_1" "creator.y"
/// @DnDArgument : "expr_2" "creator.image_angle"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
/// @DnDArgument : "var_2" "direction"
x = creator.x;
y = creator.y;
direction = creator.image_angle;