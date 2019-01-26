xx = argument0
yy = argument1

show_debug_message("Setting squirrels to plant")
print_map(global.selected_squirrels)

if (ds_map_size(global.selected_squirrels) > 0) {
	/*squirrel = ds_map_find_first(global.selected_squirrels)
	
	show_debug_message("here")
	if (squirrel.current_tree != tree) {
		show_debug_message("was not at nearest tree")
		set_squirrel_path(squirrel, tree)
	}
	squirrel.wants_to_plant = true
	squirrel.plant_pos_x = mouse_x
	squirrel.plant_pos_y = mouse_y
	show_debug_message("selected squirrels size: " + string(ds_map_size(global.selected_squirrels)))
	
	for (i = 0; i < ds_map_size(global.selected_squirrels) - 1; i++) {
		squirrel = ds_map_find_next(global.selected_squirrels, squirrel)
		show_debug_message("squirrel: " + string(squirrel))
		if (squirrel.current_tree != tree) {
			set_squirrel_path(squirrel, tree)
		}
		squirrel.wants_to_plant = true
		squirrel.plant_pos_x = mouse_x
		squirrel.plant_pos_y = mouse_y
	}
	*/
	
	for (var squirrel = ds_map_find_first(global.selected_squirrels); !is_undefined(squirrel); squirrel = ds_map_find_next(global.selected_squirrels, squirrel)) {
		tree = instance_nearest(xx, yy, obj_tree)
		show_debug_message(tree)
		show_debug_message("squirrel" + string(squirrel))
		if (squirrel.current_tree != tree) {
			show_debug_message("not at nearest tree")
			set_squirrel_path(squirrel, tree)
		}
		squirrel.wants_to_plant = true
		squirrel.plant_pos_x = xx
		squirrel.plant_pos_y = yy
		squirrel.job = "planting"
	}
	
}
