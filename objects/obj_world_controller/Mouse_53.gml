/// @description Insert description here
// You can write your code in this editor

if (!collision_point(mouse_x,mouse_y, all, false, false)) {
	if (!global.selecting_plant_pos) {
		
		with (obj_action_button) instance_destroy()
		
		with (obj_squirrel) {
			if (selected) {
				selected = false
				ds_map_delete(global.selected_squirrels, id)
			}
	
		}
	} else {
		set_squirrels_to_plant(mouse_x, mouse_y)
		global.selecting_plant_pos = false
	}
	
}

