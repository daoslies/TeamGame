extends Node

signal pressed

var current_scene = null
var personify

const char_dict_path = "res://Filled_Characters/"
var filePaths = []
var characterDirectories = []

var characterID

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)
	
	# Find filenames in art_path, ignore .import files.
	var dir = DirAccess.open(char_dict_path)
	if dir:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			if not dir.current_is_dir():
				if ".import" not in file_name:
					filePaths.append(file_name)
			file_name = dir.get_next()
	else:
		print("An error occurred when trying to access the path.")
		
	
	for file in filePaths:
		print(file)
			
		var x = FileAccess.open(char_dict_path + str(file), FileAccess.READ)
		
		var data_text = x.get_as_text()
		var json = JSON.new()
		var data_parse = json.parse(data_text)
		var data = json.get_data()
		
		characterDirectories.append(data)
		
	print('chardicts: ', characterDirectories)
		
	self.personify = characterDirectories[1]



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	characterID = 1
	self.personify = characterDirectories[characterID]							
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
