/// @description Insert description here
// You can write your code in this editor

if (climbing) {
	speed = 0
	if (image_xscale < original_scale) {
		image_xscale += climb_speed
		image_yscale = image_xscale
		exit
	} else {
		climbing = false
	}
}

if (path != noone && ds_queue_size(path) > 0)  {
	
	if (!instance_exists(current_destination)) {
		path = noone
		current_destination = noone
		current_tree = instance_nearest(x,y, obj_tree)
		exit
	}
	
	if (distance_to_point(current_destination.x, current_destination.y) < 2) {
		if (current_destination != final_destination) {
			current_tree = current_destination
			current_destination = ds_queue_dequeue(path)
			climbing = true
			speed = 0
		} else {
			path = noone
			moving = false
			if (job != "in training") {
				if (class != "soldier") job = "collecting" else job = "idle"
			}
			
			current_tree = final_destination
			final_destination = noone
			current_destination = noone
			climbing = true
		}
		
	} else {
		move_towards_point(current_destination.x, current_destination.y, spd)
		image_xscale -= 0.005
		image_yscale = image_xscale
	}
}

if (!instance_exists(current_tree)) {
	current_tree = instance_nearest(x,y, obj_tree)
}

if (path == noone && distance_to_point(current_tree.x, current_tree.y) > 1) {
	move_towards_point(current_tree.x, current_tree.y, spd)
} else if (path == noone && distance_to_point(current_tree.x, current_tree.y) < 1) {
	speed = 0
}

if (job == "collecting" && current_tree != home_tree) {
	
	if (current_tree.resins > 0 && alarm[0] <= 0) {
		global.resin++
		current_tree.resins--
		alarm[0] = irandom_range(240, 600)
	}
	sprite_index = spr_collecting_squirrel
	image_speed = 0.6
} else if (class == "soldier") {
	sprite_index = fly_sprite
} else if (job == "collecting" && current_tree == home_tree){
	sprite_index = spr_collecting_squirrel
	image_speed = 0
	job = "idle"
}

image_angle = direction

if (wants_to_plant && path == noone) {

	if (global.seeds > 0) {
		seed = instance_create_depth(x, y, -10, obj_seed)
		seed.target_x = plant_pos_x + irandom_range(-30, 30)
		seed.target_y = plant_pos_y + irandom_range(-30, 30)
		global.seeds--
	}
	wants_to_plant = false
	if (class != "soldier") job = "collecting" else job = "idle"
}

if (job == "in training" && current_tree == home_tree && alarm[1] <= 0) {
	alarm[1] = 120
}