/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B41BD66
/// @DnDInput : 6
/// @DnDArgument : "expr_2" "500"
/// @DnDArgument : "expr_3" "500"
/// @DnDArgument : "expr_4" "obj_ship"
/// @DnDArgument : "var" "cameraX"
/// @DnDArgument : "var_1" "cameraY"
/// @DnDArgument : "var_2" "cameraWidth"
/// @DnDArgument : "var_3" "cameraHeight"
/// @DnDArgument : "var_4" "target"
/// @DnDArgument : "var_5" "cameraShake"
cameraX = 0;
cameraY = 0;
cameraWidth = 500;
cameraHeight = 500;
target = obj_ship;
cameraShake = 0;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4BDF8048
/// @DnDInput : 2
/// @DnDArgument : "function" "display_set_gui_size"
/// @DnDArgument : "arg" "cameraWidth"
/// @DnDArgument : "arg_1" "cameraHeight"
display_set_gui_size(cameraWidth, cameraHeight);