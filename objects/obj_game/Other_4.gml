/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57F06993
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 291009C8
	/// @DnDParent : 57F06993
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "msc_song"
	var l291009C8_0 = msc_song;
	if (audio_is_playing(l291009C8_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 02374ABF
		/// @DnDParent : 291009C8
		/// @DnDArgument : "soundid" "msc_song"
		/// @DnDSaveInfo : "soundid" "msc_song"
		audio_stop_sound(msc_song);
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5B3C2369
	/// @DnDParent : 57F06993
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "msc_song"
	audio_play_sound(msc_song, 0, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 78B07EEB
	/// @DnDParent : 57F06993
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3154DBE9
	/// @DnDInput : 2
	/// @DnDParent : 57F06993
	/// @DnDArgument : "function" "spawn_off_camera"
	/// @DnDArgument : "arg" "obj_asteroid"
	/// @DnDArgument : "arg_1" "40"
	spawn_off_camera(obj_asteroid, 40);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5761D459
	/// @DnDInput : 2
	/// @DnDParent : 57F06993
	/// @DnDArgument : "function" "spawn_off_camera"
	/// @DnDArgument : "arg" "obj_raider"
	/// @DnDArgument : "arg_1" "8"
	spawn_off_camera(obj_raider, 8);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0AD8D9B3
	/// @DnDInput : 2
	/// @DnDParent : 57F06993
	/// @DnDArgument : "function" "spawn_off_camera"
	/// @DnDArgument : "arg" "obj_hunter"
	/// @DnDArgument : "arg_1" "5"
	spawn_off_camera(obj_hunter, 5);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5C1CC227
	/// @DnDInput : 2
	/// @DnDParent : 57F06993
	/// @DnDArgument : "function" "spawn_off_camera"
	/// @DnDArgument : "arg" "obj_brute"
	/// @DnDArgument : "arg_1" "3"
	spawn_off_camera(obj_brute, 3);
}