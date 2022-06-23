/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 187C775A
/// @DnDArgument : "soundid" "snd_die"
/// @DnDSaveInfo : "soundid" "snd_die"
audio_play_sound(snd_die, 0, 0);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DF03023
/// @DnDInput : 2
/// @DnDArgument : "var" "xx"
/// @DnDArgument : "value" "x"
/// @DnDArgument : "var_1" "yy"
/// @DnDArgument : "value_1" "y"
var xx = x;
var yy = y;

/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
/// @DnDVersion : 1
/// @DnDHash : 37EA177B
/// @DnDApplyTo : {obj_particles}
/// @DnDArgument : "x" "xx"
/// @DnDArgument : "y" "yy"
/// @DnDArgument : "system" "partSys"
/// @DnDArgument : "type" "partTypeEnemyDebris"
with(obj_particles) part_particles_create(partSys, xx, yy, partTypeEnemyDebris, 10);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6C4012FA
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
var chance = floor(random_range(0, 1 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5FDDE008
/// @DnDApplyTo : {obj_camera}
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "cameraShake"
with(obj_camera) {
cameraShake = 4;

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 476A86C2
/// @DnDArgument : "var" "chance"
if(chance == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 13DA0446
	/// @DnDParent : 476A86C2
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_powerup"
	/// @DnDSaveInfo : "objectid" "obj_powerup"
	instance_create_layer(x + 0, y + 0, "Instances", obj_powerup);
}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 3D9E9190
/// @DnDArgument : "expr" "object_index"
var l3D9E9190_0 = object_index;
switch(l3D9E9190_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 360EA836
	/// @DnDParent : 3D9E9190
	/// @DnDArgument : "const" "obj_raider"
	case obj_raider:
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 0EC6F968
		/// @DnDApplyTo : {obj_game}
		/// @DnDParent : 360EA836
		/// @DnDArgument : "score" "15"
		/// @DnDArgument : "score_relative" "1"
		with(obj_game) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(15);
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 27843A26
	/// @DnDParent : 3D9E9190
	/// @DnDArgument : "const" "obj_hunter"
	case obj_hunter:
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 4032C6A3
		/// @DnDApplyTo : {obj_game}
		/// @DnDParent : 27843A26
		/// @DnDArgument : "score" "30"
		/// @DnDArgument : "score_relative" "1"
		with(obj_game) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(30);
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2E5DDA40
	/// @DnDParent : 3D9E9190
	/// @DnDArgument : "const" "obj_brute"
	case obj_brute:
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 712E845F
		/// @DnDApplyTo : {obj_game}
		/// @DnDParent : 2E5DDA40
		/// @DnDArgument : "score" "50"
		/// @DnDArgument : "score_relative" "1"
		with(obj_game) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(50);
		}
		break;
}

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 43F29FF7
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7F311FC9
	/// @DnDParent : 43F29FF7
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "obj_debris"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}