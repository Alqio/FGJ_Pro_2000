/// @description Insert description here
// You can write your code in this editor
if (!keyboard_check(vk_control)) {
	show_debug_message("no ctrl pressed")
	with (obj_squirrel) {
		
		if (selected) {
			selected = false
			ds_map_delete(global.selected_squirrels, id)
		}
		
	}
}

selected = true
ds_map_add(global.selected_squirrels, id, id)

create_action_buttons()