extends Control

export(PackedScene) var TerminalWindow_scene

export(NodePath) var TerminalWindowTabs
onready var tab_container : TabContainer = get_node(TerminalWindowTabs)

export(NodePath) var NewTabButton
onready var new_tab_button : Button = get_node(NewTabButton)

export(NodePath) var CloseTabButton
onready var close_tab_button : Button = get_node(CloseTabButton)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	update_close_tab_button()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_NewTabButton_pressed():
	pass # Replace with function body.
	# Note to self, whenever trying to make an instance of a scene, do NOT do it by making the script for that a class and trying to call .new() on that class.
	# Do it by either making an export(PackedScene) var and calling .instance() on that or by calling load([path name to scene here]).instance(), as shown on the next 2 lines
	#var terminal_window = load("res://Terminal/TerminalWindow/TerminalWindow.tscn").instance()
	var new_tab : Node = TerminalWindow_scene.instance()
	tab_container.add_child(new_tab)
	update_tab_name(new_tab)
	update_close_tab_button()

func _on_CloseTabButton_pressed():
	pass # Replace with function body.
	tab_container.remove_child(tab_container.get_children()[tab_container.current_tab])
	update_close_tab_button()


func update_close_tab_button():
	if(len(tab_container.get_children()) <= 1):
		close_tab_button.disabled = true
	else:
		close_tab_button.disabled = false

func update_tab_name(new_tab : Node):
	new_tab.set_name("TerminalWindow" + str(tab_container.get_child_count()))
