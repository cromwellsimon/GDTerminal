extends Node

export(NodePath) var output_container_path
onready var output_container : VBoxContainer = get_node(output_container_path)

export(PackedScene) var output_scene

export(NodePath) var terminal_input_path
var terminal_input : TerminalInput
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	terminal_input = get_node(terminal_input_path)
	terminal_input.set_terminal(self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func on_text_input(input):
	pass # Replace with function body.
	execute(input)

func execute(input : String):
	var command = input.split(" ")
	var program = command[0]
	var params = []
	for i in range(1, command.size()):
		params.append(command[i])
	var output = []
	var execution = OS.execute(program, params, true, output)
	terminal_input.command_ran()
	add_new_output_line(output)

func add_new_output_line(output):
	# Note to self, whenever trying to make an instance of a scene, do NOT do it by making the script for that a class and trying to call .new() on that class.
	# Do it by either making an export(PackedScene) var and calling .instance() on that or by calling load([path name to scene here]).instance()
	var terminal_output = output_scene.instance()
	#var terminal_output = load("res://Terminal/Output/Output.tscn").instance()
	#var terminal_output = TerminalOutput.new()
	output_container.add_child(terminal_output)
	terminal_output.set_output_text(output)
