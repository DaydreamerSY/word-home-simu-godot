tool
extends Path2D

const SIZE = 100
export var NUM_POINTS = 8
#export var POINTS_POSITION = []

func _ready():
#	generateCircle()
	pass
	

func _process(delta):
#	generateCircle()
	pass
	
func generateCircle():
	var POINTS_POSITION = []
#	curve = Curve2D.new()
	var center = self.position
	var point = Vector2(0,0)
	for i in NUM_POINTS:
		point = Vector2(center.x , center.y-SIZE).rotated((i / float(NUM_POINTS)) * TAU)
		print(point)
#		print(center)
#		curve.add_point(point)
		POINTS_POSITION.push_back(point)

	# End the circle.
	curve.add_point(Vector2(0, -SIZE))
	return POINTS_POSITION
