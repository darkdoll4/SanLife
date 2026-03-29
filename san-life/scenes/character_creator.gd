extends Control


func _on_next_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/license_screen.tscn")


#Skintone data - color + which base to use
var skin_tones = [ 
	{color = Color("#f5d5b8"), dark = false},
	{color = Color("#e8b99a"), dark = false},
	{color = Color("#d4956f"), dark = false},
	{color = Color("#c47a45"), dark = false},
	{color = Color("#a0522d"), dark = true},
	{color = Color("#7d3f1e"), dark = true},
	{color = Color("733614ff"), dark = true}, 
	{color = Color("f4d4c7ff"), dark = false},
	{color = Color("e9b6acff"), dark = false},
	{color = Color("d8917eff"), dark = false},
	{color = Color("cd7258ff"), dark = false},
	{color = Color("a15035ff"), dark = true},
	{color = Color("843826ff"), dark = true},
	{color = Color("702e1dff"), dark = true},
	{color = Color("eedaa6ff"), dark = false},
	{color = Color("e4be80ff"), dark = false},
	{color = Color("c0a15fff"), dark = false},
	{color = Color("b98146ff"), dark = false},
	{color = Color("905e2cff"), dark = true},
	{color = Color("71481bff"), dark = true},
	{color = Color("583b17ff"), dark = true},
]


@export var light_body: Texture2D
@export var dark_body: Texture2D


func _ready():
	setup_skin_swatches()

func setup_skin_swatches():
	var swatches = $skintoneSwatches.get_children()
	for i in swatches.size():
		if i < skin_tones.size():
			swatches[i].modulate = skin_tones[i].color
			swatches[i].pressed.connect(_on_swatch_pressed.bind(i))
	
	
func _on_swatch_pressed(index: int):
	var tone = skin_tones[index]
	PlayerData.skin_color = tone.color
	PlayerData.use_dark_base = tone.dark
	if tone.dark:
		$Characterbody.texture = dark_body
	else:
		$Characterbody.texture = light_body
	
	
	
func _on_next_pressed():
		get_tree().change_scene_to_file("res://scenes/license_screen.tscn")
	
	
