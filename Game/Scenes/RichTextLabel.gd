extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func HigherOrLower(dice1, dice2):
	print('x    s',dice1.text)
	print(dice2.text, " HighorLower_Richtextfile")
	print('Dice 1: ', dice1)
	print('Dice 2: ', dice2)
	var result = (
	"Higher_" if int(dice1.text) > int(dice2.text)
	else "Same" if int(dice1.text) == int(dice2.text)
	else "Lower" if int(dice1.text) < int(dice2.text)
	else "Inconclusive"
	)
	
	return result
	
	

func _on_higher_pressed():
	print("Higher_richtext")
	var Dice1 = get_node("/root/FirstRoll")
	var Dice2 = get_node("/root/SecondRoll")
	var result = HigherOrLower(Dice1, Dice2)
	print(Dice1, "xoxox xoxoxo xoxoo")
	
	text = result
	
	pass # Replace with function body.

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
	var result = HigherOrLower(Dice1, Dice2)
	print(Dice1, "xoxox xoxoxo xoxoo")
	
	text = "You Chose: The Same"+result
	
	pass # Replace with function body.
