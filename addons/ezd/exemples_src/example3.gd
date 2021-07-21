extends Sprite

export var speed:=100.0
export var smoothness:=5.0
export var easing:=1.5

var dir:float
var vel:float

func _process(delta: float) -> void:
	get_input()
	apply_rotation(delta)

func get_input():
	dir=Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")

func apply_rotation(delta):
	vel+=dir*speed*delta
	
	global_rotation_degrees=Ezd.ezd_degrees(global_rotation_degrees, vel,
	smoothness*delta, easing)
