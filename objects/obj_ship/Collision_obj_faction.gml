/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 19C9FE85
/// @DnDArgument : "var" "other.faction"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "faction"
if(!(other.faction == faction))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 748AF635
	/// @DnDParent : 19C9FE85
	/// @DnDArgument : "var" "invincible"
	/// @DnDArgument : "value" "true"
	if(invincible == true)
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 2F5C8A0A
		/// @DnDApplyTo : other
		/// @DnDParent : 748AF635
		/// @DnDArgument : "event" "1"
		with(other) {
		event_user(1);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 174C8E5C
	/// @DnDParent : 19C9FE85
	else
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 59DAF98C
		/// @DnDParent : 174C8E5C
		/// @DnDArgument : "event" "1"
		event_user(1);
	}
}