/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 646D5062
/// @DnDInput : 3
/// @DnDArgument : "var" "len"
/// @DnDArgument : "value" "500"
/// @DnDArgument : "var_1" "x2"
/// @DnDArgument : "value_1" "lengthdir_x(len,direction)"
/// @DnDArgument : "var_2" "y2"
/// @DnDArgument : "value_2" "lengthdir_y(len,direction)"
var len = 500;
var x2 = lengthdir_x(len,direction);
var y2 = lengthdir_y(len,direction);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2A8B167F
/// @DnDArgument : "color" "image_blend"
draw_set_colour(image_blend & $ffffff);
var l2A8B167F_0=(image_blend >> 24);
draw_set_alpha(l2A8B167F_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Line
/// @DnDVersion : 1
/// @DnDHash : 09908FAE
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "x2"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "y2"
/// @DnDArgument : "y2_relative" "1"
draw_line(x + 0, y + 0, x + x2, y + y2);

/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 3AF354E6
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "x2"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "y2"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "target" "collisionList"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "obj" "obj_faction"
/// @DnDArgument : "aslist" "1"
/// @DnDSaveInfo : "obj" "obj_faction"
var l3AF354E6_0 = ds_list_create();
var l3AF354E6_1 = collision_line_list(x + 0, y + 0, x + x2, y + y2, obj_faction, true, 1, l3AF354E6_0, true);
var collisionList = l3AF354E6_0;
if((l3AF354E6_1 > 0))
{
	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 3BEDAAAA
	/// @DnDParent : 3AF354E6
	/// @DnDArgument : "assignee" "count"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "collisionList"
	var count = ds_list_size(collisionList);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 2747D65F
	/// @DnDParent : 3AF354E6
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "i < count"
	for(var i = 0; i < count; i += 1) {
		/// @DnDAction : YoYo Games.Data Structures.List_Get_At
		/// @DnDVersion : 1
		/// @DnDHash : 5A66CAA1
		/// @DnDParent : 2747D65F
		/// @DnDArgument : "assignee" "inst"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "collisionList"
		/// @DnDArgument : "index" "i"
		var inst = ds_list_find_value(collisionList, i);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A150B69
		/// @DnDParent : 2747D65F
		/// @DnDArgument : "var" "inst.immuneToLaser"
		/// @DnDArgument : "value" "false"
		if(inst.immuneToLaser == false)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A0F8F32
			/// @DnDParent : 5A150B69
			/// @DnDArgument : "var" "inst.faction"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "faction"
			if(!(inst.faction == faction))
			{
				/// @DnDAction : YoYo Games.Instances.Call_User_Event
				/// @DnDVersion : 1
				/// @DnDHash : 22753989
				/// @DnDApplyTo : inst
				/// @DnDParent : 2A0F8F32
				/// @DnDArgument : "event" "1"
				with(inst) {
				event_user(1);
				}
			}
		}
	}
}