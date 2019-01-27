/// @description Insert description here
// You can write your code in this editor

for(i = 0; i < ds_list_size(global.trees); i++) {

	tre = ds_list_find_value(global.trees, i)	
	if(tre.hp <= 0) {
		global.fight_is_on = false
		with(obj_human) {
			dmg = 0
			sprite_index = spr_human_idle
		}
		//TODO: fade out
	}
}
