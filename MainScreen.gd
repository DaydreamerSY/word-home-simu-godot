extends Node2D
export (PackedScene) var block_scene
signal _emit_Words_pressed(clicked_word, clicked_score)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var clicked_word = ""
var clicked_score = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var number_of_word_block = 8
	for n in range(number_of_word_block):
		var rand_pos = get_random_pos()
		var block = block_scene.instance()
		block.position = rand_pos
		block.connect("on_button_click", self, "_on_Block_on_button_click")
		block.set("word", "h")
		block.set("score", 8)
		block.connect("on_button_click", self, "_on_Words_pressed")
		add_child(block)
		# print_debug(get_random_pos())


func get_random_pos():
	var x_range = Vector2(170, 445)
	var y_range = Vector2(470, 680)

	var random_x = randi() % int(x_range[1]- x_range[0]) + 1 + x_range[0] 
	var random_y =  randi() % int(y_range[1]-y_range[0]) + 1 + y_range[0]
	var random_pos = Vector2(random_x, random_y)

	return random_pos
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Words_pressed (word, score):
#	print(word)
#	print(score)
	clicked_word = word
	clicked_score = score
	emit_signal("_emit_Words_pressed", word, str(score))
	pass
