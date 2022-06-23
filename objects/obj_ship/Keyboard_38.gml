/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 14AF343A
/// @DnDInput : 2
/// @DnDArgument : "function" "motion_add"
/// @DnDArgument : "arg" "image_angle"
/// @DnDArgument : "arg_1" "0.05"
motion_add(image_angle, 0.05);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 795DFE2A
/// @DnDArgument : "var" "len"
/// @DnDArgument : "value" "sprite_height*0.4"
var len = sprite_height*0.4;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6BA65C8F
/// @DnDInput : 2
/// @DnDArgument : "var" "xx"
/// @DnDArgument : "value" "x+lengthdir_x(len,image_angle-180)"
/// @DnDArgument : "var_1" "yy"
/// @DnDArgument : "value_1" "y+lengthdir_y(len,image_angle-180)"
var xx = x+lengthdir_x(len,image_angle-180);
var yy = y+lengthdir_y(len,image_angle-180);

/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
/// @DnDVersion : 1
/// @DnDHash : 5F13A71A
/// @DnDApplyTo : {obj_particles}
/// @DnDArgument : "x" "xx"
/// @DnDArgument : "y" "yy"
/// @DnDArgument : "system" "partSys"
/// @DnDArgument : "type" "partTypeExhaust"
/// @DnDArgument : "number" "1"
with(obj_particles) part_particles_create(partSys, xx, yy, partTypeExhaust, 1);