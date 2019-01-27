/// @description Insert description here
// You can write your code in this editor


if(hp <= 0) {
	runaway = true
	sprite_index = spr_human_runaway
	move_towards_point(x, room_height + 1000, 5)
	if(!runaway_flag) {
		global.humans_runaway++
		runaway_flag = true
	}
}
attack_tree = ds_list_find_value(global.trees, floor(on_spot/2))
if(y < attack_tree.y + 40 && !runaway) {
	speed = 0
	sprite_index = spr_human_attack
	if(irandom_range(0,100) == 1) {
		attack_tree.hp -= dmg
		
	}
}

if(y > 1800) {
	global.slots[on_spot] = false
	instance_destroy()
}

