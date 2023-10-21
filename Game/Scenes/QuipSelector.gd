extends RichTextLabel

var seconds = 0
# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var Character = get_node("/root/GetCharacter")
	var fillres = Character.personify.Quips.Filler
	for i in fillres.values():
		print(i)
		text = i

	pass
	
#import all the character files
## list of character names
# initialise character of that name

