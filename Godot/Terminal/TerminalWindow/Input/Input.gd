extends LineEdit

class_name TerminalInput

signal input_entered(input)

var terminal_controller : Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Input_text_entered(new_text):
	pass # Replace with function body.
	terminal_controller.on_input_entered(new_text)

func on_command_ran():
	text = ""
