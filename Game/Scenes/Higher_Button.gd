extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var button = Button.new()
	button.name = "Higher"
	button.text = "Higher"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed(button):
	print(button.name, 'ouch')
	pass # Replace with function body.


func _on_texture_button_toggled(button_pressed):
	print('bob')
	pass # Replace with function body.
