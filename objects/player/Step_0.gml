/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0B13C291
/// @DnDArgument : "expr" "tf_finished"
/// @DnDArgument : "not" "1"
if(!(tf_finished)){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 780D91F2
	/// @DnDParent : 0B13C291
	/// @DnDArgument : "x" "mouse_x"
	/// @DnDArgument : "y" "mouse_y"
	direction = point_direction(x, y, mouse_x, mouse_y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1F25A183
	/// @DnDParent : 0B13C291
	/// @DnDArgument : "speed" "speed1"
	speed = speed1;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4D72D690
/// @DnDArgument : "expr" "tf_died"
if(tf_died){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B5A25FC
	/// @DnDParent : 4D72D690
	/// @DnDArgument : "var" "health_time"
	health_time = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 04B26169
	/// @DnDParent : 4D72D690
	speed = 0;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 18F7D137
	/// @DnDParent : 4D72D690
	/// @DnDArgument : "objind" "player_died"
	/// @DnDSaveInfo : "objind" "player_died"
	instance_change(player_died, true);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3E19F963
/// @DnDArgument : "expr" "tf_finished"
if(tf_finished){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6DA2CBA8
	/// @DnDParent : 3E19F963
	speed = 0;

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 710B14BE
	/// @DnDParent : 3E19F963
	/// @DnDArgument : "x" "120"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "120"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "3"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	/// @DnDArgument : "color" "$FFFFFF00"
	effect_create_above(3, x + 120, y + 120, 1, $FFFFFF00 & $ffffff);}