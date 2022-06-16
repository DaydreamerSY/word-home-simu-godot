extends Node2D
export var word = "a"
export var score = 10
signal on_button_click(word, score)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var is_mouse_down = false;

func setDefaultWordScore():
	$TextureButton/Word.text = word
	$TextureButton/Score.text = str(score)
	
	
func setPosition():
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	setDefaultWordScore()
	pass # Replace with function body.
	
func _process(delta):
	if Input.is_action_pressed("click"):
		is_mouse_down = true
	else:
		is_mouse_down = false
		$TextureButton.set_normal_texture(load("res://asset/2.1 Play_Basic/Block_type_passive.png"))


func _on_TextureButton_pressed():
	emit_signal("on_button_click", word, str(score))
	pass # Replace with function body.


func _on_TextureButton_mouse_entered():
	if is_mouse_down:
		$TextureButton.set_normal_texture(load("res://asset/2.1 Play_Basic/Block_type_active.png"))
		emit_signal("on_button_click", word, str(score))
	else:
		$TextureButton.set_normal_texture(load("res://asset/2.1 Play_Basic/Block_type_passive.png"))
	pass # Replace with function body.
