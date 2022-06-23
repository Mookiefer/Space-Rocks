/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 1B9CE268
/// @DnDArgument : "margin" "sprite_width/2"
move_wrap(1, 1, sprite_width/2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 379E1CB4
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "exhaustCounter"
exhaustCounter += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7945EF80
/// @DnDArgument : "var" "exhaustCounter"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "3"
if(exhaustCounter > 3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E91B182
	/// @DnDParent : 7945EF80
	/// @DnDArgument : "var" "exhaustCounter"
	exhaustCounter = 0;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A00B13D
	/// @DnDParent : 7945EF80
	/// @DnDArgument : "var" "len"
	/// @DnDArgument : "value" "sprite_height*0.4"
	var len = sprite_height*0.4;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 690BA06C
	/// @DnDInput : 2
	/// @DnDParent : 7945EF80
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "value" "x+lengthdir_x(len,image_angle-180)"
	/// @DnDArgument : "var_1" "yy"
	/// @DnDArgument : "value_1" "y+lengthdir_y(len,image_angle-180)"
	var xx = x+lengthdir_x(len,image_angle-180);
	var yy = y+lengthdir_y(len,image_angle-180);

	/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
	/// @DnDVersion : 1
	/// @DnDHash : 21C73A2A
	/// @DnDApplyTo : {obj_particles}
	/// @DnDParent : 7945EF80
	/// @DnDArgument : "x" "xx"
	/// @DnDArgument : "y" "yy"
	/// @DnDArgument : "system" "partSys"
	/// @DnDArgument : "type" "partTypeEnemyExhaust"
	/// @DnDArgument : "number" "1"
	with(obj_particles) part_particles_create(partSys, xx, yy, partTypeEnemyExhaust, 1);
}