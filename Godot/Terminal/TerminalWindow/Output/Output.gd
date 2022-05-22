extends Control

class_name TerminalOutput


export(NodePath) var OutputText_path
onready var output_text : Node = get_node(OutputText_path)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func add_new_output(output):
	output_text.text = str(output).lstrip("[").rstrip("]") + "\n" + output_text.text
