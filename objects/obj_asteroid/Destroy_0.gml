/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 79B60C3A
/// @DnDArgument : "soundid" "snd_hurt"
/// @DnDSaveInfo : "soundid" "snd_hurt"
audio_play_sound(snd_hurt, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 7E2CF2A6
/// @DnDApplyTo : {obj_game}
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 7258DF99
	/// @DnDParent : 7E2CF2A6
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01EE6E5B
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_asteroid_med"
if(sprite_index == spr_asteroid_med)
{
	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 14923CB2
	/// @DnDParent : 01EE6E5B
	/// @DnDArgument : "times" "2"
	repeat(2)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7F96571A
		/// @DnDParent : 14923CB2
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "newAsteroid"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "obj_asteroid"
		var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2436CEA1
		/// @DnDParent : 14923CB2
		/// @DnDArgument : "expr" "spr_asteroid_small"
		/// @DnDArgument : "var" "newAsteroid.sprite_index"
		newAsteroid.sprite_index = spr_asteroid_small;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 65E367E0
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_asteroid_huge"
if(sprite_index == spr_asteroid_huge)
{
	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 45CB44BA
	/// @DnDParent : 65E367E0
	/// @DnDArgument : "times" "2"
	repeat(2)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 07421C70
		/// @DnDParent : 45CB44BA
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "newAsteroid"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "obj_asteroid"
		var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1FFF55A5
		/// @DnDParent : 45CB44BA
		/// @DnDArgument : "expr" "spr_asteroid_med"
		/// @DnDArgument : "var" "newAsteroid.sprite_index"
		newAsteroid.sprite_index = spr_asteroid_med;
	}
}

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 688F68DD
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6EBD75A6
	/// @DnDParent : 688F68DD
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "obj_debris"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}