/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 79B60C3A
/// @DnDArgument : "soundid" "snd_hurt"
/// @DnDSaveInfo : "soundid" "snd_hurt"
audio_play_sound(snd_hurt, 0, 0);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C09BA4F
/// @DnDInput : 2
/// @DnDArgument : "var" "xx"
/// @DnDArgument : "value" "x"
/// @DnDArgument : "var_1" "yy"
/// @DnDArgument : "value_1" "y"
var xx = x;
var yy = y;

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
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 045F7007
	/// @DnDApplyTo : {obj_camera}
	/// @DnDParent : 01EE6E5B
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "cameraShake"
	with(obj_camera) {
	cameraShake = 2;
	
	}

	/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
	/// @DnDVersion : 1
	/// @DnDHash : 14A1E7F4
	/// @DnDApplyTo : {obj_particles}
	/// @DnDParent : 01EE6E5B
	/// @DnDArgument : "x" "xx"
	/// @DnDArgument : "y" "yy"
	/// @DnDArgument : "system" "partSys"
	/// @DnDArgument : "type" "partTypeAsteroidDebris"
	/// @DnDArgument : "number" "8"
	with(obj_particles) part_particles_create(partSys, xx, yy, partTypeAsteroidDebris, 8);

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
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23C32B5F
	/// @DnDApplyTo : {obj_camera}
	/// @DnDParent : 65E367E0
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "var" "cameraShake"
	with(obj_camera) {
	cameraShake = 4;
	
	}

	/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
	/// @DnDVersion : 1
	/// @DnDHash : 75394017
	/// @DnDApplyTo : {obj_particles}
	/// @DnDParent : 65E367E0
	/// @DnDArgument : "x" "xx"
	/// @DnDArgument : "y" "yy"
	/// @DnDArgument : "system" "partSys"
	/// @DnDArgument : "type" "partTypeAsteroidDebris"
	/// @DnDArgument : "number" "12"
	with(obj_particles) part_particles_create(partSys, xx, yy, partTypeAsteroidDebris, 12);

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

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2B6C5996
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4ED800C7
	/// @DnDApplyTo : {obj_camera}
	/// @DnDParent : 2B6C5996
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "cameraShake"
	with(obj_camera) {
	cameraShake = 1;
	
	}

	/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
	/// @DnDVersion : 1
	/// @DnDHash : 5C410781
	/// @DnDApplyTo : {obj_particles}
	/// @DnDParent : 2B6C5996
	/// @DnDArgument : "x" "xx"
	/// @DnDArgument : "y" "yy"
	/// @DnDArgument : "system" "partSys"
	/// @DnDArgument : "type" "partTypeAsteroidDebris"
	/// @DnDArgument : "number" "4"
	with(obj_particles) part_particles_create(partSys, xx, yy, partTypeAsteroidDebris, 4);
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

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5A8BB1D7
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "5"
var chance = floor(random_range(0, 5 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C9C39AA
/// @DnDArgument : "var" "chance"
if(chance == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1E1D3EC4
	/// @DnDParent : 3C9C39AA
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_powerup"
	/// @DnDSaveInfo : "objectid" "obj_powerup"
	instance_create_layer(x + 0, y + 0, "Instances", obj_powerup);
}