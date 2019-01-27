/// @description Insert description here
// You can write your code in this editor

if(global.fight_is_on){
	spawn_timer--
}

if(spawn_timer <= 0 && humans_spawned + 1 < global.squirrel_count) {

	available_slots = ds_list_create()
	for(i = 0; i < 4; i++) {
		if(!global.slots[i]){
			ds_list_add(available_slots, i)
		}
	}
	ds_list_shuffle(available_slots)
	if(ds_list_size(available_slots) > 0) {
		
		spot = ds_list_find_value(available_slots, 0)
		switch(spot) {
			case 0: 
				the_tree = ds_list_find_value(global.trees,0)
				go_to_x = the_tree.x - 50
				mirror = true
				break
			case 1: 
				the_tree = ds_list_find_value(global.trees,0)
				go_to_x = the_tree.x + the_tree.trunk_width + 50
				mirror = false
				break
			case 2: 
				the_tree = ds_list_find_value(global.trees,1)
				go_to_x = the_tree.x - 50
				mirror = true
				break
			case 3: 
				the_tree = ds_list_find_value(global.trees,1)
				go_to_x = the_tree.x + the_tree.trunk_width + 50
				mirror = false
				break
		}
		global.slots[spot] = true
		human = instance_create_depth(go_to_x, room_height + 300, -2, obj_human)
		humans_spawned++
		human.on_spot = spot

		if(mirror) {
			human.image_xscale *= -1
		}
		
	}
	spawn_timer = 500
}