extends LineEdit

class_name TerminalInput

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
	terminal_controller.on_text_input(new_text)
	
	
func set_terminal(terminal):
	 terminal_controller = terminal


func command_ran():
	#self.text = (self.text + " = " + output)
	#self.editable = false
	print()
