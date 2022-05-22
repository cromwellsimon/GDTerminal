extends Node

#export(NodePath) var output_container_path
#onready var output_container : VBoxContainer = get_node(output_container_path)

export(NodePath) var terminal_output_path
onready var terminal_output : TerminalOutput = get_node(terminal_output_path)

#export(PackedScene) var output_scene

export(NodePath) var terminal_input_path
onready var terminal_input : TerminalInput = get_node(terminal_input_path)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	terminal_input.terminal_controller = self


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func on_input_entered(input):
	pass
	execute(input)


func execute(input : String):
	var command = input.split(" ")
	var program = command[0]
	var params = []
	for i in range(1, command.size()):
		params.append(command[i])
	var output = []
	var execution = OS.execute(program, params, true, output)
	terminal_input.on_command_ran()
	terminal_output.add_new_output_line(input, output)
