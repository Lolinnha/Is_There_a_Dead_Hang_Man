extends Node2D

var words = [
	'Terrifying',
	'Macabre', 
	'Frightening', 
	'Sinister', 
	'Bloodcurdling',
	'Phantasmal',
	'Supernatural',
	'Crepuscular', 
	'Cursed',
	'Creepifying',
	'Morbid',
	'Witching',
	'Decapitation', 
	'Maniac', 
	'Paranoiac',
	'Psychopath',
	'Gore', 
	'Brutality',
	'Apprehension', 
	'Panic', 
	'Terror', 
	'Horror', 
	'Creepiness', 
	'Nightmarish', 
	'Shock',
	'Exsanguination',
	'Phantasmagoric', 
	'Eldritch', 
	'Abomination',
	'Sanguine'
	] 
	
func get_characters(word): 
	var letters = []
	
	for l in word:
		letters.append(l)
	return letters
	
func get_size(letters):
	var size = letters.length()
	return size 
	
	
func add_label(offset, current_position, value, default_value):
	for letter in value:
		var label = Label.new()
		add_child(label)

		label.text = letter if not default_value else default_value
		label.rect_position = current_position
		current_position += offset
	
func set_word(word):
	var position_offset = Vector2(40, 0) 
	var current_position = Vector2(320, 522)
	var current_position_line = Vector2(320, 532)

	add_label(position_offset, current_position, word, false)
	add_label(position_offset, current_position_line, word, '_')
	
func _ready():
	var live = 5
	var guessedLetters = ""
	
	words = words[0]
	
	for w in [words]:
		var letters = get_characters(w)
		var size = get_size(w)
		set_word(w)
		
func clear_game():
	pass

func validate_input():
	#while (choice < 1 || choice > 4):
		pass


func _on_Button_pressed():
	pass # Replace with function body.
