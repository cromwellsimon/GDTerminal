extends Panel

class_name TerminalOutput


export(NodePath) var output_text_path
onready var output_text : Node = get_node(output_text_path)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func set_output_text(input):
	output_text.text = str(input)
	print(output_text.text)
