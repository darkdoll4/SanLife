extends Control



func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_new_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/character_creator.tscn")


func _on_continue_pressed() -> void:
	print("continue pressed")


func _on_settings_pressed() -> void:
	print("settings pressed")
