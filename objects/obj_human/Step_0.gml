/// @description Insert description here
// You can write your code in this editor

image_angle = direction - 90

if (escaping) {
	if (sprite_index != spr_escaping_human) {
		sprite_index = spr_escaping_human
		image_speed = 0.8
	}
	
	if (escape_point_x == noone || escape_point_y == noone) {
		if (choose(1,2) == 1) {
			escape_point_x = choose(-10, room_width + 10)
			escape_point_y = irandom(room_height)
		} else {
			escape_point_x = irandom(room_width)
			escape_point_y = choose(-10, room_height + 10)
		}
	}
	move_towards_point(escape_point_x, escape_point_y, spd * 2.5)
	exit
}

if (target == noone || !instance_exists(target)) {
	target = instance_nearest(x,y, obj_tree)
} else {
	if (instance_exists(target)) {
		if (distance_to_object(target) > attack_range) {
			move_towards_point(target.x, target.y, spd)
		} else {
			speed = 0
			if (alarm[0] <= 0) can_attack = true
			
			var near_squirrels = 0
			var tar = target
			with (obj_squirrel) {
				if (current_tree == tar) near_squirrels++
			}
			if (near_squirrels > 0) {
				escaping = true
			}
			
		}
		

		
	}
}

if (can_attack) {
	sprite_index = attack_sprite
	image_speed = 1.3
	can_attack = false
}