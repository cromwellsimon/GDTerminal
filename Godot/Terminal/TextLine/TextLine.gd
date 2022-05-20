extends LineEdit

class_name TextLine

export(NodePath) var terminal
signal on_text_input(input)
var input : String

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_LineEdit_text_entered(new_text):
	pass # Replace with function body.
	emit_signal("on_text_input", new_text)


func command_ran(output):
	self.text = (self.text + " = " + output)
	self.editable = false
