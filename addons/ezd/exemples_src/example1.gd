extends Node2D
class_name Ex1

export var time:=5.0
export var easing:=-3.0

onready var begin:=$"../begin"
onready var end:=$"../end"

onready var current_target:=end
onready var current_node:=begin

var timer:float

func _ready() -> void:
	global_position = current_target.global_position

func _process(delta: float) -> void:
	timer+=delta
	
	timer = clamp(timer,0,time)
	
	var x=timer/time
	
	global_position = Ezd.ezdlerp_vec2(current_node.global_position,current_target.global_position,x,-3.0)
	
	if(x==1):
		timer=0
		switch_target()
	
func switch_target():
	if(current_target == begin):
		current_target = end
		current_node=begin
	elif(current_target == end):
		current_target = begin
		current_node=end


func _on_next_button_up() -> void:
	get_tree().change_scene("res://addons/ezd/examples/example2.tscn")
