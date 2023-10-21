extends Node2D

# initialise chosen character
# json to gds script
"""
func load() -> Dictionary: #"/Filled_Characters/ghost.json"
	var file = File.new()
	file.open("/Filled_Characters/ghost.json", File.READ)
	var text = file.get_as_text()
	file.close()
	
	var character = JSON.parse(text).result
	if character.error != OK:
		print("Error parsing JSON", character.error)
	return character
	"""
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
