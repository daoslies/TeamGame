extends RichTextLabel

#import character

"""
	var x = FileAccess.open("res://Filled_Characters/Ghost.json", FileAccess.READ)
	
	var data_text = x.get_as_text()
	var json = JSON.new()
	var data_parse = json.parse(data_text)
	var data = json.get_data()
	var personify = data
	print('Get Character: ', personify.Name)
	pass # Replace with function body.

"""
var seconds = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	var character = load("res://Scenes/GetCharacter.gd").new()
	print('Quipds: ', character)
	text = "Hello world!"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = str(seconds)
	seconds+=1
	pass
	
#import all the character files
## list of character names
# initialise character of that name

