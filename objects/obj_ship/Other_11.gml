/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6BFA1E62
/// @DnDArgument : "var" "invincible"
/// @DnDArgument : "value" "false"
if(invincible == false)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 64E78C76
	/// @DnDParent : 6BFA1E62
	instance_destroy();
}