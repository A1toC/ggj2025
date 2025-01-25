/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 5FDCD5F4
/// @DnDArgument : "x1" "50"
/// @DnDArgument : "y1" "300"
/// @DnDArgument : "x2" "100"
/// @DnDArgument : "y2" "700"
/// @DnDArgument : "direction" "3"
/// @DnDArgument : "value" "health_time/20*100"
/// @DnDArgument : "backcol" "$FFFF0000"
/// @DnDArgument : "barcol" "$FF600463"
/// @DnDArgument : "mincol" "$FFFFFF00"
/// @DnDArgument : "maxcol" "$FFFFFF00"
draw_healthbar(50, 300, 100, 700, health_time/20*100, $FFFF0000 & $FFFFFF, $FFFFFF00 & $FFFFFF, $FFFFFF00 & $FFFFFF, 3, (($FFFF0000>>24) != 0), (($FF600463>>24) != 0));