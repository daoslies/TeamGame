extends Node2D

var Dice1 
var Dice2 
var DidYaWin
# Called when the node enters the scene tree for the first time.
func _ready():
	
	Dice1 = get_node("RollLabels/1stRoll")   #"/root/FirstRoll")
	Dice2 = get_node("/root/SecondRoll")
	DidYaWin = get_node("RollLabels/DidYaWin")
	

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func HigherOrLower(dice1, dice2):
	print('Dice 1: ', dice1)
	print('Dice 2: ', dice2)
	var result = (
	"Higher_" if int(dice1) > int(dice2)
	else "Same" if int(dice1) == int(dice2)
	else "Lower" if int(dice1) < int(dice2)
	else "Inconclusive"
	)
	
	return result


func _on_higher_pressed():
	print("Higher_richtext")
	var result = HigherOrLower(3,6)  #Dice1, Dice2)

	Dice1.text = result
	DidYaWin.text = result
	print('Dice1.text: ', Dice1.text, 'result', result)
	pass # Replace with function body.


func _on_same_pressed():
	pass # Replace with function body.


func _on_lower_pressed():
	pass # Replace with function body.
	
func random_num_gen(DiceSize):
	var rand_num_gen = RandomNumberGenerator.new()		
	var num = int(rand_num_gen.randf_range(1, DiceSize))
	return num
	
	
func roll():
	var Character = get_node("/root/GetCharacter")
	print('Rolling...',)
	var DiceSize = Character.personify.DiceSize
	var roll = random_num_gen(DiceSize)
	
	return roll




func _on_start_button_pressed():
	var roll = roll()
	Dice1.text = str(roll)

	pass # Replace with function body.
