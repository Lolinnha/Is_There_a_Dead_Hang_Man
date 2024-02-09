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
	'HELP'
	] 
	
func get_characters(word): 
	var letters = []
	
	for l in word:
		letters.append(l)
	return letters
	
func get_size(letters):
	var size = letters.length()
	return size 
	
	
func add_label( value, current_position, default_value, offset):
	for letter in value:
		var label = Label.new()
		add_child(label)

		label.text = letter if not default_value else default_value
		label.rect_position = current_position
		current_position += offset
		
func hide_labels(labels):
	for label in labels:
		label.visible = false
		
		
func show_label(label_value, labels ):
	for label in labels:
		if label.text == label_value:
			label.visible = false
	
func set_word(word):
	var position_offset = Vector2(40, 0) 
	var current_position = Vector2(320, 522)
	var current_position_line = Vector2(320, 532)

	add_label(position_offset, current_position, word, true)
	add_label(position_offset, current_position_line, word, '*')
	
func _ready():
	var live = 5
	var guessedLetters = ""
	
	words = words[0]
	
	for w in [words]:
		var letters = get_characters(w)
		var size = get_size(w)
		set_word(w)

func validate_input():
	#while (choice < 1 || choice > 4):
		#FOO : BAR
		pass
		
func _on_Button_pressed():
	pass # Replace with function body.
	
