extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var x = FileAccess.open("res://Filled_Characters/Ghost.json", FileAccess.Read)
	
	var data_text = x.get_as_text()
	var json = JSON.new()
	var data_parse = json.parse(data_text)
	var data = json.get_data()
	var personify = data
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
