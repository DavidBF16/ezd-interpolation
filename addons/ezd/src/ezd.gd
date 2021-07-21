extends Node
class_name Ezd

#			eased variant interpolation
static func ezdlerp(from,to,weight:float,easing:float):
	return lerp(from,to,ease(weight,easing))

#			eased float interpolation
static func ezdlerp_float(from:float,to:float,weight:float,easing:float)->float:
	return lerp(from,to,ease(weight,easing))

#			eased Vector2 interpolation
static func ezdlerp_vec2(from:Vector2,to:Vector2,weight:float,easing:float)->Vector2:
	return lerp(from,to,ease(weight,easing))

#			eased Vector3 interpolation
static func ezdlerp_vec3(from:Vector3,to:Vector3,weight:float,easing:float)->Vector3:
	return lerp(from,to,ease(weight,easing))

#			eased Color interpolation
static func ezdlerp_color(from:Color,to:Color,weight:float,easing:float)->Color:
	return lerp(from,to,ease(weight,easing))

#			eased int interpolation
static func ezdlerp_int(from:int,to:int,weight:float,easing:float)->float:
	return lerp(from,to,ease(weight,easing))

#			eased angle(radians) interpolation
static func ezdlerp_angle_rad(from:float,to:float,weight:float,easing:float)->float:
	return lerp_angle(from,to,ease(weight,easing))

#			eased angle(degrees) interpolation
static func ezdlerp_angle_deg(from:float,to:float,weight:float,easing:float)->float:
	var from_rad = deg2rad(from)
	var to_rad = deg2rad(to)
	
	return lerp_angle(from_rad,to_rad,ease(weight,easing))

#			eased inverse float interpolation
static func inverse_ezdlerp_float(from:float,to:float,weight:float,easing:float)->float:
	return inverse_lerp(from,to,ease(weight,easing))
