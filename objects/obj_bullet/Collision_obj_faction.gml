/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 52D53C48
/// @DnDArgument : "var" "other.id"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "creator"
if(!(other.id == creator))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0964786E
	/// @DnDParent : 52D53C48
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 123435A8
	/// @DnDParent : 52D53C48
	/// @DnDArgument : "var" "other.faction"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "faction"
	if(!(other.faction == faction))
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 014BFE7D
		/// @DnDApplyTo : other
		/// @DnDParent : 123435A8
		/// @DnDArgument : "event" "1"
		with(other) {
		event_user(1);
		}
	}
}