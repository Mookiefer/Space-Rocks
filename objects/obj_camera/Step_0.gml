/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 04A1B6E6
/// @DnDArgument : "obj" "target"
var l04A1B6E6_0 = false;
l04A1B6E6_0 = instance_exists(target);
if(l04A1B6E6_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64D26BD0
	/// @DnDInput : 2
	/// @DnDParent : 04A1B6E6
	/// @DnDArgument : "expr" "clamp(target.x - (cameraWidth/2), 0, room_width - cameraWidth)"
	/// @DnDArgument : "expr_1" "clamp(target.y - (cameraHeight/2), 0, room_height - cameraHeight)"
	/// @DnDArgument : "var" "cameraX"
	/// @DnDArgument : "var_1" "cameraY"
	cameraX = clamp(target.x - (cameraWidth/2), 0, room_width - cameraWidth);
	cameraY = clamp(target.y - (cameraHeight/2), 0, room_height - cameraHeight);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 14BEE6DC
	/// @DnDParent : 04A1B6E6
	/// @DnDArgument : "var" "x_shake"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "min" "-cameraShake"
	/// @DnDArgument : "max" "cameraShake"
	var x_shake = (random_range(-cameraShake, cameraShake));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 0047E143
	/// @DnDParent : 04A1B6E6
	/// @DnDArgument : "var" "y_shake"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "min" "-cameraShake"
	/// @DnDArgument : "max" "cameraShake"
	var y_shake = (random_range(-cameraShake, cameraShake));

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3753A8AA
	/// @DnDInput : 3
	/// @DnDParent : 04A1B6E6
	/// @DnDArgument : "function" "camera_set_view_pos"
	/// @DnDArgument : "arg" "view_camera[0]"
	/// @DnDArgument : "arg_1" "cameraX + x_shake"
	/// @DnDArgument : "arg_2" "cameraY + y_shake"
	camera_set_view_pos(view_camera[0], cameraX + x_shake, cameraY + y_shake);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3546CF1B
	/// @DnDParent : 04A1B6E6
	/// @DnDArgument : "var" "cameraShake"
	/// @DnDArgument : "op" "2"
	if(cameraShake > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1BA10799
		/// @DnDParent : 3546CF1B
		/// @DnDArgument : "expr" "-0.2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "cameraShake"
		cameraShake += -0.2;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E6C22D6
		/// @DnDParent : 3546CF1B
		/// @DnDArgument : "var" "cameraShake"
		/// @DnDArgument : "op" "1"
		if(cameraShake < 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 17066D1A
			/// @DnDParent : 5E6C22D6
			/// @DnDArgument : "var" "cameraShake"
			cameraShake = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3648A5EE
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Parallax_0""
/// @DnDArgument : "arg_1" "cameraX*0.9"
layer_x("Parallax_0", cameraX*0.9);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 01BF1CA4
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Parallax_0""
/// @DnDArgument : "arg_1" "cameraY*0.9"
layer_y("Parallax_0", cameraY*0.9);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 73123CE2
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Parallax_1""
/// @DnDArgument : "arg_1" "cameraX*0.8"
layer_x("Parallax_1", cameraX*0.8);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3F2AA464
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Parallax_1""
/// @DnDArgument : "arg_1" "cameraY*0.8"
layer_y("Parallax_1", cameraY*0.8);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 65243664
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Parallax_2""
/// @DnDArgument : "arg_1" "cameraX*0.7"
layer_x("Parallax_2", cameraX*0.7);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5CA45DD6
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Parallax_2""
/// @DnDArgument : "arg_1" "cameraY*0.7"
layer_y("Parallax_2", cameraY*0.7);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0126656C
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Parallax_3""
/// @DnDArgument : "arg_1" "cameraX*0.6"
layer_x("Parallax_3", cameraX*0.6);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 7FC789AB
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Parallax_3""
/// @DnDArgument : "arg_1" "cameraY*0.6"
layer_y("Parallax_3", cameraY*0.6);