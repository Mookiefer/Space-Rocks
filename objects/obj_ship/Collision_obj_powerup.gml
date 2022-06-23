/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 04C50C14
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 030562AD
	/// @DnDParent : 04C50C14
	/// @DnDArgument : "var" "powerup_type"
	/// @DnDArgument : "value" "image_index"
	var powerup_type = image_index;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0C823FD4
	/// @DnDParent : 04C50C14
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00FA7F05
/// @DnDArgument : "var" "powerup_type"
/// @DnDArgument : "value" "5"
if(powerup_type == 5)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5413B3E2
	/// @DnDParent : 00FA7F05
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "invincible"
	invincible = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1953083A
	/// @DnDParent : 00FA7F05
	/// @DnDArgument : "steps" "8*60"
	alarm_set(0, 8*60);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1B26AC3F
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53B3129F
	/// @DnDParent : 1B26AC3F
	/// @DnDArgument : "expr" "powerup_type"
	/// @DnDArgument : "var" "guns"
	guns = powerup_type;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4ABC2761
	/// @DnDParent : 1B26AC3F
	/// @DnDArgument : "steps" "5*60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 5*60);
}