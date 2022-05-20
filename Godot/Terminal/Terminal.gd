extends Node

export(NodePath) var vertical_box_path
export(NodePath) var input_path
onready var line_edit : LineEdit = get_node(input_path)
onready var vertical_box : VBoxContainer = get_node(vertical_box_path)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextLine_on_text_input(input):
	pass # Replace with function body.
	execute(line_edit.text)

func execute(input : String):
	var program_regex = RegEx.new()
	program_regex.compile("")
	var command = input.split(" ")
	var program = command[0]
	var params = []
	for i in range(1, command.size()):
		params.append(command[i])
	var output = []
	var execution = OS.execute(program, params, true, output)
	print(output[0])
	line_edit.command_ran(output[0])
	add_new_line()

func add_new_line():
	var new_text_line = TextLine.new()
	vertical_box.add_child(new_text_line)
