extends Node

signal pressed

# Called when the node enters the scene tree for the first time.
func _ready():
	var x = FileAccess.open("res://Filled_Characters/Ghost.json", FileAccess.READ)
	
	var data_text = x.get_as_text()
	var json = JSON.new()
	var data_parse = json.parse(data_text)
	var data = json.get_data()
	var personify = data
	print('Get Character: ', personify.Name)
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
