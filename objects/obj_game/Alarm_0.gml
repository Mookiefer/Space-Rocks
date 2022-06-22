/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16E6E794
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_game"
if(!(room == rm_game))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 07438F36
	/// @DnDParent : 16E6E794
	exit;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0D877DF4
/// @DnDArgument : "steps" "room_speed*1"
alarm_set(0, room_speed*1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6675796E
/// @DnDInput : 2
/// @DnDArgument : "function" "spawn_off_camera"
/// @DnDArgument : "arg" "obj_asteroid"
/// @DnDArgument : "arg_1" "1"
spawn_off_camera(obj_asteroid, 1);