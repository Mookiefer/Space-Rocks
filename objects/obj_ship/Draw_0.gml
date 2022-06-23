/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 77FC15DF
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60A5530B
/// @DnDArgument : "var" "invincible"
/// @DnDArgument : "value" "true"
if(invincible == true)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3FE9A823
	/// @DnDParent : 60A5530B
	/// @DnDArgument : "expr" "alarm[0] > 60 or floor(alarm[0] / 10) mod 2 == 0"
	if(alarm[0] > 60 or floor(alarm[0] / 10) mod 2 == 0)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 618C9BE3
		/// @DnDParent : 3FE9A823
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "spr_ship_powerups_strip6"
		/// @DnDArgument : "frame" "5"
		/// @DnDArgument : "col" "image_blend"
		/// @DnDSaveInfo : "sprite" "spr_ship_powerups_strip6"
		draw_sprite_ext(spr_ship_powerups_strip6, 5, x + 0, y + 0, 1, 1, image_angle + 0, image_blend & $ffffff, 1);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 091B2231
/// @DnDArgument : "var" "guns"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "-1"
if(!(guns == -1))
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4C3A1B04
	/// @DnDParent : 091B2231
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "rot_relative" "1"
	/// @DnDArgument : "sprite" "spr_ship_powerups_strip6"
	/// @DnDArgument : "frame" "guns"
	/// @DnDArgument : "col" "image_blend"
	/// @DnDSaveInfo : "sprite" "spr_ship_powerups_strip6"
	draw_sprite_ext(spr_ship_powerups_strip6, guns, x + 0, y + 0, 1, 1, image_angle + 0, image_blend & $ffffff, 1);
}