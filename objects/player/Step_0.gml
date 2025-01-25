/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0B13C291
/// @DnDInput : 2
/// @DnDArgument : "expr" "tf_dash_finished"
/// @DnDArgument : "expr_1" "tf_finished"
/// @DnDArgument : "not_1" "1"
if(tf_dash_finished && !(tf_finished)){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
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

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 17CAAB87
var l17CAAB87_0;l17CAAB87_0 = keyboard_check(vk_space);if (l17CAAB87_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F142026
	/// @DnDParent : 17CAAB87
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "dash_finished"
	dash_finished = false;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3544CEC7
	/// @DnDParent : 17CAAB87
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 055CADF2
	/// @DnDInput : 2
	/// @DnDParent : 17CAAB87
	/// @DnDArgument : "expr" "mouse_x"
	/// @DnDArgument : "expr_1" "mouse_y"
	/// @DnDArgument : "var" "dash_mousex"
	/// @DnDArgument : "var_1" "dash_mousey"
	dash_mousex = mouse_x;
	dash_mousey = mouse_y;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 7BBE209A
var l7BBE209A_0;l7BBE209A_0 = keyboard_check_released(vk_space);if (l7BBE209A_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4562770B
	/// @DnDParent : 7BBE209A
	/// @DnDArgument : "x" "dash_mousex"
	/// @DnDArgument : "y" "dash_mousey"
	direction = point_direction(x, y, dash_mousex, dash_mousey);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2E83E999
	/// @DnDParent : 7BBE209A
	/// @DnDArgument : "speed" "speed_dash"
	speed = speed_dash;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 382546D7
	/// @DnDParent : 7BBE209A
	/// @DnDArgument : "steps" "dash_time*room_speed"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, dash_time*room_speed);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4D72D690
/// @DnDArgument : "expr" "tf_died"
if(tf_died){	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 7E7B9FF3
	/// @DnDParent : 4D72D690
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	effect_create_above(0, x + 0, y + 0, 1, $FFFFFF & $ffffff);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B5A25FC
	/// @DnDParent : 4D72D690
	/// @DnDArgument : "var" "health_time"
	health_time = 0;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 38519112
	/// @DnDParent : 4D72D690
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3E19F963
/// @DnDArgument : "expr" "tf_finished"
if(tf_finished){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 18D16864
	/// @DnDParent : 3E19F963
	speed = 0;}