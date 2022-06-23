/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 283322E5
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// httpshelp.yoyogames.com/hc/en-us/articles/360005277377 for more information
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
/// @DnDInput : 3
/// @DnDArgument : "funcName" "create_bullet"
/// @DnDArgument : "arg" "dir"
/// @DnDArgument : "arg_1" "spd"
/// @DnDArgument : "arg_2" "gun_type=-1"
function create_bullet(dir, spd, gun_type=-1) 
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 3EF7C3F7
	/// @DnDParent : 7C95B90E
	/// @DnDArgument : "expr" "gun_type"
	var l3EF7C3F7_0 = gun_type;
	switch(l3EF7C3F7_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5DF5904F
		/// @DnDParent : 3EF7C3F7
		case 0:
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 4803FBEC
			/// @DnDParent : 5DF5904F
			/// @DnDArgument : "soundid" "snd_zap"
			/// @DnDSaveInfo : "soundid" "snd_zap"
			audio_play_sound(snd_zap, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1559EA2B
			/// @DnDParent : 5DF5904F
			/// @DnDArgument : "var" "sep"
			/// @DnDArgument : "value" "12"
			var sep = 12;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 486223FC
			/// @DnDParent : 5DF5904F
			/// @DnDArgument : "xpos" "lengthdir_x(sep, dir-90)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "lengthdir_y(sep, dir-90)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newBullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var newBullet = instance_create_layer(x + lengthdir_x(sep, dir-90), y + lengthdir_y(sep, dir-90), "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 21E6A7F6
			/// @DnDInput : 3
			/// @DnDParent : 5DF5904F
			/// @DnDArgument : "function" "initialize_bullet"
			/// @DnDArgument : "arg" "dir"
			/// @DnDArgument : "arg_1" "spd"
			/// @DnDArgument : "arg_2" "newBullet"
			initialize_bullet(dir, spd, newBullet);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3E4DF72D
			/// @DnDParent : 5DF5904F
			/// @DnDArgument : "xpos" "lengthdir_x(sep, dir+90)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "lengthdir_y(sep, dir+90)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newBullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var newBullet = instance_create_layer(x + lengthdir_x(sep, dir+90), y + lengthdir_y(sep, dir+90), "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 452239C2
			/// @DnDInput : 3
			/// @DnDParent : 5DF5904F
			/// @DnDArgument : "function" "initialize_bullet"
			/// @DnDArgument : "arg" "dir"
			/// @DnDArgument : "arg_1" "spd"
			/// @DnDArgument : "arg_2" "newBullet"
			initialize_bullet(dir, spd, newBullet);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 28D83BCD
		/// @DnDParent : 3EF7C3F7
		/// @DnDArgument : "const" "1"
		case 1:
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 0FC91A32
			/// @DnDParent : 28D83BCD
			/// @DnDArgument : "soundid" "snd_zap"
			/// @DnDSaveInfo : "soundid" "snd_zap"
			audio_play_sound(snd_zap, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6AE5360C
			/// @DnDParent : 28D83BCD
			/// @DnDArgument : "var" "sep"
			/// @DnDArgument : "value" "12"
			var sep = 12;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2014ADC2
			/// @DnDParent : 28D83BCD
			/// @DnDArgument : "xpos" "lengthdir_x(sep, dir-90)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "lengthdir_y(sep, dir-90)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newBullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var newBullet = instance_create_layer(x + lengthdir_x(sep, dir-90), y + lengthdir_y(sep, dir-90), "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 6A6A7D51
			/// @DnDInput : 3
			/// @DnDParent : 28D83BCD
			/// @DnDArgument : "function" "initialize_bullet"
			/// @DnDArgument : "arg" "dir"
			/// @DnDArgument : "arg_1" "spd"
			/// @DnDArgument : "arg_2" "newBullet"
			initialize_bullet(dir, spd, newBullet);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 64139A29
			/// @DnDParent : 28D83BCD
			/// @DnDArgument : "xpos" "lengthdir_x(sep, dir+90)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "lengthdir_y(sep, dir+90)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newBullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var newBullet = instance_create_layer(x + lengthdir_x(sep, dir+90), y + lengthdir_y(sep, dir+90), "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 35447502
			/// @DnDInput : 3
			/// @DnDParent : 28D83BCD
			/// @DnDArgument : "function" "initialize_bullet"
			/// @DnDArgument : "arg" "dir"
			/// @DnDArgument : "arg_1" "spd"
			/// @DnDArgument : "arg_2" "newBullet"
			initialize_bullet(dir, spd, newBullet);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5A6638F7
			/// @DnDParent : 28D83BCD
			/// @DnDArgument : "xpos" "lengthdir_x(sep, dir)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "lengthdir_y(sep, dir)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newBullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var newBullet = instance_create_layer(x + lengthdir_x(sep, dir), y + lengthdir_y(sep, dir), "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 3B5D4696
			/// @DnDInput : 3
			/// @DnDParent : 28D83BCD
			/// @DnDArgument : "function" "initialize_bullet"
			/// @DnDArgument : "arg" "dir"
			/// @DnDArgument : "arg_1" "spd"
			/// @DnDArgument : "arg_2" "newBullet"
			initialize_bullet(dir, spd, newBullet);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1E0260DC
		/// @DnDParent : 3EF7C3F7
		/// @DnDArgument : "const" "2"
		case 2:
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 2B447597
			/// @DnDParent : 1E0260DC
			/// @DnDArgument : "soundid" "snd_zap"
			/// @DnDSaveInfo : "soundid" "snd_zap"
			audio_play_sound(snd_zap, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 622F8E77
			/// @DnDParent : 1E0260DC
			/// @DnDArgument : "var" "sep"
			/// @DnDArgument : "value" "7"
			var sep = 7;
		
			/// @DnDAction : YoYo Games.Loops.For_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 1F6CA0E3
			/// @DnDParent : 1E0260DC
			/// @DnDArgument : "init_temp" "1"
			/// @DnDArgument : "cond" "i < 4"
			for(var i = 0; i < 4; i += 1) {
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 499C6CFB
				/// @DnDParent : 1F6CA0E3
				/// @DnDArgument : "var" "bullet_angle"
				/// @DnDArgument : "value" "dir + (i * 90)"
				var bullet_angle = dir + (i * 90);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 300D2125
				/// @DnDParent : 1F6CA0E3
				/// @DnDArgument : "xpos" "lengthdir_x(sep, bullet_angle)"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "lengthdir_y(sep, bullet_angle)"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "newBullet"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "obj_bullet"
				/// @DnDSaveInfo : "objectid" "obj_bullet"
				var newBullet = instance_create_layer(x + lengthdir_x(sep, bullet_angle), y + lengthdir_y(sep, bullet_angle), "Instances", obj_bullet);
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 4665521C
				/// @DnDInput : 3
				/// @DnDParent : 1F6CA0E3
				/// @DnDArgument : "function" "initialize_bullet"
				/// @DnDArgument : "arg" "bullet_angle"
				/// @DnDArgument : "arg_1" "spd"
				/// @DnDArgument : "arg_2" "newBullet"
				initialize_bullet(bullet_angle, spd, newBullet);
			}
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 182C099B
		/// @DnDParent : 3EF7C3F7
		/// @DnDArgument : "const" "3"
		case 3:
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 1BE61B20
			/// @DnDParent : 182C099B
			/// @DnDArgument : "soundid" "snd_zap"
			/// @DnDSaveInfo : "soundid" "snd_zap"
			audio_play_sound(snd_zap, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C26CCD6
			/// @DnDParent : 182C099B
			/// @DnDArgument : "var" "sep"
			/// @DnDArgument : "value" "7"
			var sep = 7;
		
			/// @DnDAction : YoYo Games.Loops.For_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 749C9F97
			/// @DnDParent : 182C099B
			/// @DnDArgument : "init_temp" "1"
			/// @DnDArgument : "cond" "i < 8"
			for(var i = 0; i < 8; i += 1) {
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 61A7FB60
				/// @DnDParent : 749C9F97
				/// @DnDArgument : "var" "bullet_angle"
				/// @DnDArgument : "value" "dir + (i * 45)"
				var bullet_angle = dir + (i * 45);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 75383B20
				/// @DnDParent : 749C9F97
				/// @DnDArgument : "xpos" "lengthdir_x(sep, bullet_angle)"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "lengthdir_y(sep, bullet_angle)"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "newBullet"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "obj_bullet"
				/// @DnDSaveInfo : "objectid" "obj_bullet"
				var newBullet = instance_create_layer(x + lengthdir_x(sep, bullet_angle), y + lengthdir_y(sep, bullet_angle), "Instances", obj_bullet);
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 45402DD7
				/// @DnDInput : 3
				/// @DnDParent : 749C9F97
				/// @DnDArgument : "function" "initialize_bullet"
				/// @DnDArgument : "arg" "bullet_angle"
				/// @DnDArgument : "arg_1" "spd"
				/// @DnDArgument : "arg_2" "newBullet"
				initialize_bullet(bullet_angle, spd, newBullet);
			}
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 60D1A8B4
		/// @DnDParent : 3EF7C3F7
		/// @DnDArgument : "const" "4"
		case 4:
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 65F6E29B
			/// @DnDParent : 60D1A8B4
			/// @DnDArgument : "soundid" "snd_laser"
			/// @DnDSaveInfo : "soundid" "snd_laser"
			audio_play_sound(snd_laser, 0, 0);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2A604B41
			/// @DnDParent : 60D1A8B4
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newBullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_laser"
			/// @DnDSaveInfo : "objectid" "obj_laser"
			var newBullet = instance_create_layer(x + 0, y + 0, "Instances", obj_laser);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 468C676D
			/// @DnDInput : 3
			/// @DnDParent : 60D1A8B4
			/// @DnDArgument : "function" "initialize_bullet"
			/// @DnDArgument : "arg" "dir"
			/// @DnDArgument : "arg_1" "0"
			/// @DnDArgument : "arg_2" "newBullet"
			initialize_bullet(dir, 0, newBullet);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 5F15B681
		/// @DnDParent : 3EF7C3F7
		default:
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 594CD136
			/// @DnDParent : 5F15B681
			/// @DnDArgument : "soundid" "snd_zap"
			/// @DnDSaveInfo : "soundid" "snd_zap"
			audio_play_sound(snd_zap, 0, 0);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 32804C53
			/// @DnDParent : 5F15B681
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newBullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var newBullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 3802E572
			/// @DnDInput : 3
			/// @DnDParent : 5F15B681
			/// @DnDArgument : "function" "initialize_bullet"
			/// @DnDArgument : "arg" "dir"
			/// @DnDArgument : "arg_1" "spd"
			/// @DnDArgument : "arg_2" "newBullet"
			initialize_bullet(dir, spd, newBullet);
			break;
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 05E66A5E
/// @DnDInput : 3
/// @DnDArgument : "funcName" "initialize_bullet"
/// @DnDArgument : "arg" "dir"
/// @DnDArgument : "arg_1" "spd"
/// @DnDArgument : "arg_2" "newBullet"
function initialize_bullet(dir, spd, newBullet) 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 551B751C
	/// @DnDInput : 3
	/// @DnDParent : 05E66A5E
	/// @DnDArgument : "var" "fac"
	/// @DnDArgument : "value" "faction"
	/// @DnDArgument : "var_1" "col"
	/// @DnDArgument : "value_1" "image_blend"
	/// @DnDArgument : "var_2" "creator_id"
	/// @DnDArgument : "value_2" "id"
	var fac = faction;
	var col = image_blend;
	var creator_id = id;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78FF5F61
	/// @DnDInput : 5
	/// @DnDApplyTo : newBullet
	/// @DnDParent : 05E66A5E
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