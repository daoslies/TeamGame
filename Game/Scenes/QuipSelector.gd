extends RichTextLabel

var seconds = 0
var HigherOrLower
var fillerQuips
# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	
	#text =_filler_quips()

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _filler_quips(personify):
	
	#HigherOrLower = get_node("/root/HigherOrLower")
	#print('qUIPS')
	print(personify.Name)
	
	fillerQuips = personify.Quips.Filler
	
	#print(fillerQuips)
	#rint(HigherOrLower.personify.Name)

	var len_qu = len(fillerQuips)
	var rand_num_gen = RandomNumberGenerator.new()		
	var randum_num = str(int(rand_num_gen.randf_range(1, len_qu)))

	var quip = fillerQuips[randum_num]
	
	print(quip)

	return quip
	
	
#import all the character files
## list of character names
# initialise character of that name

