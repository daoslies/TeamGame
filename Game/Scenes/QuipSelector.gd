extends RichTextLabel

var seconds = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	
	var Character = get_node("/root/GetCharacter")
	var fillres = Character.personify.Quips.Filler
	#for i in fillres.values():
	#	print(i)
		#text = i
	text =_filler_quips(fillres)

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):


	pass

func _filler_quips(fillres):
	#returns or prints a _filler_quip from character
	#locate the quips
	#var quips = Character.Quips.Filler
	#len of quips
	var len_qu = len(fillres)
	#fillres = fillres.Values()
	
	#create random number in range of quips, to index a random quip
	# rand num generator
	var rand_num_gen = RandomNumberGenerator.new()		
	var randum_num = str(int(rand_num_gen.randf_range(1, len_qu)))
	
	print(randum_num)
	print(fillres)
	print(fillres[randum_num])
	var quip = fillres[randum_num]
	#return quip
	return quip
	
	
#import all the character files
## list of character names
# initialise character of that name

