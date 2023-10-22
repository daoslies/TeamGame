extends RichTextLabel

var roll_two

# Called when the node enters the scene tree for the first time.
func _ready():
	self.text=  "0"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func displayText(roll_two):
	
	print('Here', roll_two)
	self.text = str(int(roll_two))
	print('Roll: ', self.text)
	
	return self.text

func randum_num(DiceSize):
	var rand_num_gen = RandomNumberGenerator.new()		
	var randum_num = int(rand_num_gen.randf_range(1, DiceSize))
	return randum_num

func _on_higher_pressed():
	var Character = get_node("/root/GetCharacter")

	print('clicked_higher_2stRoll')
	
	var DiceSize = Character.personify.DiceSize
		# rand num generator
	#var rand_num_gen = RandomNumberGenerator.new()		
	#var randum_num = str(int(rand_num_gen.randf_range(1, DiceSize)))
	var roll_two = randum_num(DiceSize)
	self.roll_two = roll_two
	text = str(roll_two)
		
	### Time delay between roll and reveal.
	pass # Replace with function body.
	
func _on_lower_pressed():
	var Character = get_node("/root/GetCharacter")

	print('clicked_lower')
	
	var DiceSize = Character.personify.DiceSize
	var num = randum_num(DiceSize)
	self.roll_two = roll_two
		# rand num generator
	#var rand_num_gen = RandomNumberGenerator.new()		
	#var randum_num = str(int(rand_num_gen.randf_range(1, DiceSize)))
	text = str(roll_two)
		
	### Time delay between roll and reveal.
	pass # Replace with function body.


func _on_same_pressed():
	var Character = get_node("/root/GetCharacter")

	print('clicked_same')
	
	var DiceSize = Character.personify.DiceSize
	var roll_two= randum_num(DiceSize)
	self.roll_two = roll_two
		# rand num generator
	#var rand_num_gen = RandomNumberGenerator.new()		
	#var randum_num = str(int(rand_num_gen.randf_range(1, DiceSize)))
	text = str(roll_two)
	pass # Replace with function body.

func get_roll():
	return roll_two
