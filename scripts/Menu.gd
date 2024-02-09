extends Node2D

#When button is pressed, it changes to Main Scene
func _on_Button_pressed():
	pass #get_tree().change_scene("")
	
	
#When button is pressed, it ends the application 
func _on_Button2_pressed():
	get_tree().quit()
	

func _on_AudioStreamPlayer_ready():
	$AudioStreamPlayer.play()
