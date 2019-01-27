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
		global.seeds += global.squirrel.acorns
		global.lost_fight = true
		
		if (instance_number(obj_transition2) < 1) {
			script_execute(create_transition, "fade")
		}
		
		with (obj_squirrel) {
			if (current_tree == global.current_fight_tree) {
				current_tree = instance_nearest(x,y,obj_tree)
			}
		}
		
		end_fight()

	}
}

if(global.humans_runaway >= global.squirrel_count) {
	end_fight()
}
