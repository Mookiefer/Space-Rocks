/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 283322E5
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "spawn_off_camera"
/// @DnDArgument : "arg" "obj"
/// @DnDArgument : "arg_1" "number"
function spawn_off_camera(obj, number) 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B0F0C4F
	/// @DnDParent : 283322E5
	/// @DnDArgument : "var" "pad"
	/// @DnDArgument : "value" "64"
	var pad = 64;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 5ABF441F
	/// @DnDParent : 283322E5
	/// @DnDArgument : "times" "number"
	repeat(number)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3893DCC6
		/// @DnDParent : 5ABF441F
		/// @DnDArgument : "var" "boundCheck"
		/// @DnDArgument : "value" "true"
		var boundCheck = true;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 05539898
		/// @DnDParent : 5ABF441F
		/// @DnDArgument : "var" "boundCheck"
		/// @DnDArgument : "value" "true"
		while ((boundCheck == true)) {
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 04EFE6C4
			/// @DnDParent : 05539898
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_width"
			var xx = (random_range(0, room_width));
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 596B448C
			/// @DnDParent : 05539898
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_height"
			var yy = (random_range(0, room_height));
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 51153A53
			/// @DnDInput : 6
			/// @DnDApplyTo : {obj_camera}
			/// @DnDParent : 05539898
			/// @DnDArgument : "var" "boundCheck"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "function" "point_in_rectangle"
			/// @DnDArgument : "arg" "xx"
			/// @DnDArgument : "arg_1" "yy"
			/// @DnDArgument : "arg_2" "cameraX - pad"
			/// @DnDArgument : "arg_3" "cameraY - pad"
			/// @DnDArgument : "arg_4" "cameraX + cameraWidth + pad"
			/// @DnDArgument : "arg_5" "cameraY + cameraHeight + pad"
			with(obj_camera) {
				var boundCheck = point_in_rectangle(xx, yy, cameraX - pad, cameraY - pad, cameraX + cameraWidth + pad, cameraY + cameraHeight + pad);
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 04779641
		/// @DnDParent : 5ABF441F
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj"
		instance_create_layer(xx, yy, "Instances", obj);
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7C95B90E
/// @DnDInput : 2
/// @DnDArgument : "funcName" "create_bullet"
/// @DnDArgument : "arg" "dir"
/// @DnDArgument : "arg_1" "spd"
function create_bullet(dir, spd) 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FCF0FDC
	/// @DnDInput : 3
	/// @DnDParent : 7C95B90E
	/// @DnDArgument : "var" "fac"
	/// @DnDArgument : "value" "faction"
	/// @DnDArgument : "var_1" "col"
	/// @DnDArgument : "value_1" "image_blend"
	/// @DnDArgument : "var_2" "creator_id"
	/// @DnDArgument : "value_2" "id"
	var fac = faction;
	var col = image_blend;
	var creator_id = id;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 594CD136
	/// @DnDParent : 7C95B90E
	/// @DnDArgument : "soundid" "snd_zap"
	/// @DnDSaveInfo : "soundid" "snd_zap"
	audio_play_sound(snd_zap, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 32804C53
	/// @DnDParent : 7C95B90E
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newBullet"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	var newBullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78FF5F61
	/// @DnDInput : 5
	/// @DnDApplyTo : newBullet
	/// @DnDParent : 7C95B90E
	/// @DnDArgument : "expr" "dir"
	/// @DnDArgument : "expr_1" "spd"
	/// @DnDArgument : "expr_2" "fac"
	/// @DnDArgument : "expr_3" "col"
	/// @DnDArgument : "expr_4" "creator_id"
	/// @DnDArgument : "var" "direction"
	/// @DnDArgument : "var_1" "speed"
	/// @DnDArgument : "var_2" "faction"
	/// @DnDArgument : "var_3" "image_blend"
	/// @DnDArgument : "var_4" "creator"
	with(newBullet) {
	direction = dir;
	speed = spd;
	faction = fac;
	image_blend = col;
	creator = creator_id;
	
	}
}