/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D004B72
/// @DnDInput : 3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "true"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "var" "tf_died"
/// @DnDArgument : "var_1" "tf_dash_finished"
/// @DnDArgument : "var_2" "tf_finished"
tf_died = false;
tf_dash_finished = true;
tf_finished = false;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1449DA86
/// @DnDArgument : "steps" "300"
alarm_set(0, 300);