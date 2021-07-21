extends KinematicBody2D
class_name Ex2

export var speed:=500.0
export var smoothness:=5.0
export var easing:=-2.5

var dir:Vector2
var vel:Vector2

func _process(delta: float) -> void:
	apply_input()
	

func _physics_process(delta: float) -> void:
	apply_movement(delta)
	pass

func apply_input()->void:
	var x:=Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	var y:=Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	
	dir=Vector2(x,y)

func apply_movement(delta)->void:
	var target:=dir*speed
	
	vel=Ezd.ezdlerp_vec2(vel, target, smoothness * delta, easing)
	
	vel = move_and_slide(vel, Vector2.UP)


func _on_next_button_up() -> void:
	get_tree().change_scene("res://addons/ezd/examples/example3.tscn")


func _on_previous_button_up() -> void:
	get_tree().change_scene("res://addons/ezd/examples/example1.tscn")
