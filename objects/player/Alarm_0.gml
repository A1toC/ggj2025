/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3F7D94F5
/// @DnDArgument : "expr" "tf_finished"
/// @DnDArgument : "not" "1"
if(!(tf_finished)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BAD9AC3
	/// @DnDParent : 3F7D94F5
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "health_time"
	health_time += -1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 70AF4EFE
	/// @DnDParent : 3F7D94F5
	/// @DnDArgument : "steps" "300"
	alarm_set(0, 300);}