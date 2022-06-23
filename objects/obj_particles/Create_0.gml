/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.1
/// @DnDHash : 0C7C3C25
/// @DnDArgument : "var" "partSys"
partSys = part_system_create_layer("Instances", 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 4A35591A
/// @DnDComment : player exhaust
/// @DnDArgument : "var" "partTypeExhaust"
partTypeExhaust = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Sprite
/// @DnDVersion : 1
/// @DnDHash : 65CB992E
/// @DnDArgument : "type" "partTypeExhaust"
/// @DnDArgument : "sprite" "spr_exhaust"
/// @DnDSaveInfo : "sprite" "spr_exhaust"
part_type_sprite(partTypeExhaust, spr_exhaust, true, false, false);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 688D7D25
/// @DnDArgument : "type" "partTypeExhaust"
/// @DnDArgument : "minsize" "0.4"
/// @DnDArgument : "maxsize" "0.4"
/// @DnDArgument : "sizeincr" "0.05"
part_type_size(partTypeExhaust, 0.4, 0.4, 0.05, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Color
/// @DnDVersion : 1
/// @DnDHash : 79F86CCB
/// @DnDArgument : "type" "partTypeExhaust"
/// @DnDArgument : "midcol" "$FFFF00F2"
/// @DnDArgument : "endcol" "$FFFF003F"
part_type_colour3(partTypeExhaust, $FFFFFF & $FFFFFF, $FFFF00F2 & $FFFFFF, $FFFF003F & $FFFFFF);

/// @DnDAction : YoYo Games.Particles.Part_Type_Alpha
/// @DnDVersion : 1
/// @DnDHash : 6D97BEFE
/// @DnDArgument : "type" "partTypeExhaust"
/// @DnDArgument : "end" "0"
part_type_alpha3(partTypeExhaust, 1, 1, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 7EA23ECA
/// @DnDArgument : "typ" "partTypeExhaust"
/// @DnDArgument : "minlife" "20"
/// @DnDArgument : "maxlife" "20"
part_type_life(partTypeExhaust, 20, 20);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 10DEC343
/// @DnDComment : enemy exhaust
/// @DnDArgument : "var" "partTypeEnemyExhaust"
partTypeEnemyExhaust = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Sprite
/// @DnDVersion : 1
/// @DnDHash : 54CD860C
/// @DnDArgument : "type" "partTypeEnemyExhaust"
/// @DnDArgument : "sprite" "spr_exhaust"
/// @DnDSaveInfo : "sprite" "spr_exhaust"
part_type_sprite(partTypeEnemyExhaust, spr_exhaust, true, false, false);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 001D3EA8
/// @DnDArgument : "type" "partTypeEnemyExhaust"
/// @DnDArgument : "minsize" "0.4"
/// @DnDArgument : "maxsize" "0.4"
/// @DnDArgument : "sizeincr" "0.05"
part_type_size(partTypeEnemyExhaust, 0.4, 0.4, 0.05, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Color
/// @DnDVersion : 1
/// @DnDHash : 142E513C
/// @DnDArgument : "type" "partTypeEnemyExhaust"
/// @DnDArgument : "startcol" "$FF00FFFF"
/// @DnDArgument : "midcol" "$FF0052F2"
/// @DnDArgument : "endcol" "$FF0000FF"
part_type_colour3(partTypeEnemyExhaust, $FF00FFFF & $FFFFFF, $FF0052F2 & $FFFFFF, $FF0000FF & $FFFFFF);

/// @DnDAction : YoYo Games.Particles.Part_Type_Alpha
/// @DnDVersion : 1
/// @DnDHash : 37E17473
/// @DnDArgument : "type" "partTypeEnemyExhaust"
/// @DnDArgument : "end" "0"
part_type_alpha3(partTypeEnemyExhaust, 1, 1, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 07AC5E3A
/// @DnDArgument : "typ" "partTypeEnemyExhaust"
/// @DnDArgument : "minlife" "20"
/// @DnDArgument : "maxlife" "20"
part_type_life(partTypeEnemyExhaust, 20, 20);