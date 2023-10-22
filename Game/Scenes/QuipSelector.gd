extends RichTextLabel

var seconds = 0
var Character
var fillerQuips
# Called when the node enters the scene tree for the first time.
func _ready():
	
	Character = get_node("/root/GetCharacter")
	fillerQuips = Character.personify.Quips.Filler

	text =_filler_quips(fillerQuips)

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _filler_quips(fillres):

	var len_qu = len(fillerQuips)
	var rand_num_gen = RandomNumberGenerator.new()		
	var randum_num = str(int(rand_num_gen.randf_range(1, len_qu)))

	var quip = fillres[randum_num]

	return quip
	
	
#import all the character files
## list of character names
# initialise character of that name

