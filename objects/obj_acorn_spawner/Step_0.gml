/// @description Insert description here
// You can write your code in this editor


if(global.fight_is_on){
	spawn_timer--
}
if(spawn_timer == 0) {
	ds_list_shuffle(global.branches)
	spawn_branch = ds_list_find_value(global.branches, 0)	
	if(spawn_branch.heading == "right"){
		acorn_x = irandom_range(spawn_branch.x + 30, spawn_branch.x + spawn_branch.length)
	} else {
		acorn_x = irandom_range(spawn_branch.x - 30, spawn_branch.x - spawn_branch.length)
	}
	acorn_y = spawn_branch.y
	acorn = instance_create_depth(acorn_x, acorn_y, -2, obj_acorn_collectable)
	spawn_timer = max_timer
}