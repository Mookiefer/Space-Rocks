/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.1
/// @DnDHash : 0C7C3C25
/// @DnDArgument : "var" "partSys"
/// @DnDArgument : "persist" "1"
partSys = part_system_create_layer("Instances", 1);

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

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 1067E7B8
/// @DnDComment : asteroid debris
/// @DnDArgument : "var" "partTypeAsteroidDebris"
partTypeAsteroidDebris = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7BBC545D
/// @DnDArgument : "type" "partTypeAsteroidDebris"
/// @DnDArgument : "sprite" "spr_asteroid_debris"
/// @DnDSaveInfo : "sprite" "spr_asteroid_debris"
part_type_sprite(partTypeAsteroidDebris, spr_asteroid_debris, true, false, false);

/// @DnDAction : YoYo Games.Particles.Part_Type_Alpha
/// @DnDVersion : 1
/// @DnDHash : 5F1ABFDF
/// @DnDArgument : "type" "partTypeAsteroidDebris"
/// @DnDArgument : "start" "0.8"
/// @DnDArgument : "middle" "0.8"
/// @DnDArgument : "end" "0"
part_type_alpha3(partTypeAsteroidDebris, 0.8, 0.8, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 07F045C2
/// @DnDArgument : "typ" "partTypeAsteroidDebris"
/// @DnDArgument : "minlife" "60"
/// @DnDArgument : "maxlife" "80"
part_type_life(partTypeAsteroidDebris, 60, 80);

/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
/// @DnDVersion : 1
/// @DnDHash : 61890B3C
/// @DnDArgument : "type" "partTypeAsteroidDebris"
part_type_direction(partTypeAsteroidDebris, 0, 360, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Orientation
/// @DnDVersion : 1
/// @DnDHash : 7350BEEB
/// @DnDArgument : "type" "partTypeAsteroidDebris"
part_type_orientation(partTypeAsteroidDebris, 0, 360, 0, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 400EE6BB
/// @DnDArgument : "type" "partTypeAsteroidDebris"
/// @DnDArgument : "minspeed" "2"
/// @DnDArgument : "maxspeed" "2.4"
/// @DnDArgument : "incr" "-0.02"
part_type_speed(partTypeAsteroidDebris, 2, 2.4, -0.02, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 503318BB
/// @DnDComment : ship debris
/// @DnDArgument : "var" "partTypeShipDebris"
partTypeShipDebris = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Sprite
/// @DnDVersion : 1
/// @DnDHash : 28C9E5D9
/// @DnDArgument : "type" "partTypeShipDebris"
/// @DnDArgument : "sprite" "spr_ship_debris"
/// @DnDSaveInfo : "sprite" "spr_ship_debris"
part_type_sprite(partTypeShipDebris, spr_ship_debris, true, false, false);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 74C3D35C
/// @DnDArgument : "type" "partTypeShipDebris"
/// @DnDArgument : "minsize" "0.5"
part_type_size(partTypeShipDebris, 0.5, 1, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Color
/// @DnDVersion : 1
/// @DnDHash : 018CF2FA
/// @DnDArgument : "type" "partTypeShipDebris"
/// @DnDArgument : "startcol" "$FFFFFF00"
/// @DnDArgument : "midcol" "$FFFFFF00"
/// @DnDArgument : "endcol" "$FFFFFF00"
part_type_colour3(partTypeShipDebris, $FFFFFF00 & $FFFFFF, $FFFFFF00 & $FFFFFF, $FFFFFF00 & $FFFFFF);

/// @DnDAction : YoYo Games.Particles.Part_Type_Alpha
/// @DnDVersion : 1
/// @DnDHash : 46D86D53
/// @DnDArgument : "type" "partTypeShipDebris"
/// @DnDArgument : "start" "0.6"
/// @DnDArgument : "middle" "0.6"
/// @DnDArgument : "end" "0"
part_type_alpha3(partTypeShipDebris, 0.6, 0.6, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 08101A02
/// @DnDArgument : "typ" "partTypeShipDebris"
/// @DnDArgument : "minlife" "60"
/// @DnDArgument : "maxlife" "80"
part_type_life(partTypeShipDebris, 60, 80);

/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
/// @DnDVersion : 1
/// @DnDHash : 6DB4D4C3
/// @DnDArgument : "type" "partTypeShipDebris"
part_type_direction(partTypeShipDebris, 0, 360, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Orientation
/// @DnDVersion : 1
/// @DnDHash : 341AE0D1
/// @DnDArgument : "type" "partTypeShipDebris"
part_type_orientation(partTypeShipDebris, 0, 360, 0, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 1523A5F7
/// @DnDArgument : "type" "partTypeShipDebris"
/// @DnDArgument : "minspeed" "3"
/// @DnDArgument : "maxspeed" "4"
/// @DnDArgument : "incr" "-0.05"
part_type_speed(partTypeShipDebris, 3, 4, -0.05, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 533762DD
/// @DnDComment : enemy debris
/// @DnDArgument : "var" "partTypeEnemyDebris"
partTypeEnemyDebris = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4254F86F
/// @DnDArgument : "type" "partTypeEnemyDebris"
/// @DnDArgument : "sprite" "spr_ship_debris"
/// @DnDSaveInfo : "sprite" "spr_ship_debris"
part_type_sprite(partTypeEnemyDebris, spr_ship_debris, true, false, false);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 310DF3BD
/// @DnDArgument : "type" "partTypeEnemyDebris"
/// @DnDArgument : "minsize" "0.5"
part_type_size(partTypeEnemyDebris, 0.5, 1, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Color
/// @DnDVersion : 1
/// @DnDHash : 5C5A9F85
/// @DnDArgument : "type" "partTypeEnemyDebris"
/// @DnDArgument : "startcol" "$FF0000FF"
/// @DnDArgument : "midcol" "$FF0000FF"
/// @DnDArgument : "endcol" "$FF0000FF"
part_type_colour3(partTypeEnemyDebris, $FF0000FF & $FFFFFF, $FF0000FF & $FFFFFF, $FF0000FF & $FFFFFF);

/// @DnDAction : YoYo Games.Particles.Part_Type_Alpha
/// @DnDVersion : 1
/// @DnDHash : 7A27EF3F
/// @DnDArgument : "type" "partTypeEnemyDebris"
/// @DnDArgument : "start" "0.6"
/// @DnDArgument : "middle" "0.6"
/// @DnDArgument : "end" "0"
part_type_alpha3(partTypeEnemyDebris, 0.6, 0.6, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 5918DAB1
/// @DnDArgument : "typ" "partTypeEnemyDebris"
/// @DnDArgument : "minlife" "60"
/// @DnDArgument : "maxlife" "80"
part_type_life(partTypeEnemyDebris, 60, 80);

/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
/// @DnDVersion : 1
/// @DnDHash : 5EFC3A2F
/// @DnDArgument : "type" "partTypeEnemyDebris"
part_type_direction(partTypeEnemyDebris, 0, 360, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Orientation
/// @DnDVersion : 1
/// @DnDHash : 484CC5E6
/// @DnDArgument : "type" "partTypeEnemyDebris"
part_type_orientation(partTypeEnemyDebris, 0, 360, 0, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 7E53C325
/// @DnDArgument : "type" "partTypeEnemyDebris"
/// @DnDArgument : "minspeed" "3"
/// @DnDArgument : "maxspeed" "4"
/// @DnDArgument : "incr" "-0.05"
part_type_speed(partTypeEnemyDebris, 3, 4, -0.05, 0);