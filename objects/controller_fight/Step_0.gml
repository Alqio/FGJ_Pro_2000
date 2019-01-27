/// @description Insert description here
// You can write your code in this editor

for(i = 0; i < ds_list_size(global.trees); i++) {

	tre = ds_list_find_value(global.trees, i)	
	if(tre.hp <= 0) {
		end_fight()
	}
}

if(global.humans_runaway >= global.squirrel_count) {
	end_fight()
}
