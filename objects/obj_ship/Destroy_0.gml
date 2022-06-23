/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7BFCDE8E
/// @DnDArgument : "soundid" "snd_die"
/// @DnDSaveInfo : "soundid" "snd_die"
audio_play_sound(snd_die, 0, 0);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5ECF49F0
/// @DnDInput : 2
/// @DnDArgument : "var" "xx"
/// @DnDArgument : "value" "x"
/// @DnDArgument : "var_1" "yy"
/// @DnDArgument : "value_1" "y"
var xx = x;
var yy = y;

/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
/// @DnDVersion : 1
/// @DnDHash : 54FB9637
/// @DnDApplyTo : {obj_particles}
/// @DnDArgument : "x" "xx"
/// @DnDArgument : "y" "yy"
/// @DnDArgument : "system" "partSys"
/// @DnDArgument : "type" "partTypeShipDebris"
with(obj_particles) part_particles_create(partSys, xx, yy, partTypeShipDebris, 10);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 09C7E448
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7271C0F9
	/// @DnDParent : 09C7E448
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "obj_debris"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 373038EA
/// @DnDApplyTo : {obj_game}
with(obj_game) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 71CAE4BC
	/// @DnDParent : 373038EA
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 60);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 71A1F40C
/// @DnDApplyTo : {obj_game}
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 1ED46D96
	/// @DnDParent : 71A1F40C
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}