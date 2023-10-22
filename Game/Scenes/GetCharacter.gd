extends Node

signal pressed

var current_scene = null
var personify

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)
	
	var x = FileAccess.open("res://Filled_Characters/Ghost.json", FileAccess.READ)
	var data_text = x.get_as_text()
	var json = JSON.new()
	var data_parse = json.parse(data_text)
	var data = json.get_data()
	self.personify = data
	print('Get Character: ', personify.Name)
	
	var artPath = personify.ArtPath
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_lower_pressed():
	print("Lower")
	return "Lower"
	pass # Replace with function body.


func _on_same_pressed():
	print("Same")
	return "Same"
	pass # Replace with function body.


func _on_higher_pressed():
	print("Higher")
	return "Higher"
	pass # Replace with function body.
