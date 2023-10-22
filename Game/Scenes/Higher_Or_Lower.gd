extends Node2D

var Dice1 
var Dice2 
var DidYaWin
var Roll1
var Roll2
# Called when the node enters the scene tree for the first time.
func _ready():
	
	Dice1 = get_node("RollLabels/1stRoll")   #"/root/FirstRoll")
	Dice2 = get_node("RollLabels/2stRoll")
	DidYaWin = get_node("RollLabels/DidYaWin")
	

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func HigherOrLower(dice1, dice2):
	print('Dice 1: ', dice1)
	print('Dice 2: ', dice2)
	print(dice1, dice2)
	var result = (
	"Higher_" if int(dice1) < int(dice2)
	else "Same" if int(dice1) == int(dice2)
	else "Lower" if int(dice1) > int(dice2)
	else "Inconclusive"
	)
	
	return result


func _on_higher_pressed():
	
	Roll2 = roll()
	Dice2.text = str(Roll2)

	var result = HigherOrLower(Roll1,Roll2)  #Dice1, Dice2)

	DidYaWin.text = result + str(Roll1) +  str(Roll2)

	pass # Replace with function body.


func _on_same_pressed():
	Roll2 = roll()
	Dice2.text = str(Roll2)

	var result = HigherOrLower(Roll1,Roll2)  #Dice1, Dice2)

	DidYaWin.text = result
	pass # Replace with function body.


func _on_lower_pressed():
	Roll2 = roll()
	Dice2.text = str(Roll2)

	var result = HigherOrLower(Roll1,Roll2)  #Dice1, Dice2)

	DidYaWin.text = result
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
	Roll1 = roll()
	Dice1.text = str(Roll1)

	pass # Replace with function body.
