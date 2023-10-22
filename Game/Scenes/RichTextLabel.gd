extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = self.text
	pass
	
func displayText(text2set):
	
	self.text = str(int(text2set))

	
	

func _on_lower_pressed():
	print("Lower_RichText")
	var Dice1 = get_node("/root/FirstRoll")
	var Dice2 = get_node("/root/SecondRoll")
	print(Dice1.get_roll(), 'num num num Richtextfile')
	print(Dice2.get_roll(), 'twonum Richtextfile')
	#var result = HigherOrLower(Dice1.get_roll(), Dice2.get_roll())
	print(Dice1, "xoxox xoxoxo xoxoo")
	
	text = "You Chose: Lower" #result
	
	pass # Replace with function body.
	
func _on_same_pressed():
	print("Same_richtext")
	var Dice1 = get_node("/root/FirstRoll")
	var Dice2 = get_node("/root/SecondRoll")
	var result = "tesst" #//HigherOrLower(Dice1, Dice2)
	print(Dice1, "xoxox xoxoxo xoxoo")
	
	text = "You Chose: The Same"+result
	
	pass # Replace with function body.
