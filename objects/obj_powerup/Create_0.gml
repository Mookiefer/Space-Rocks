/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5B132C40
/// @DnDArgument : "var" "powerup"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "5"
var powerup = floor(random_range(0, 5 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F7B07D8
/// @DnDArgument : "expr" "powerup"
/// @DnDArgument : "var" "image_index"
image_index = powerup;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 430AE2BF
/// @DnDArgument : "steps" "5*60"
alarm_set(0, 5*60);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2BA4D9CD
/// @DnDArgument : "colour" "$FF15FF00"
image_blend = $FF15FF00 & $ffffff;
image_alpha = ($FF15FF00 >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 6C874BE6
/// @DnDArgument : "speed" "0"
image_speed = 0;