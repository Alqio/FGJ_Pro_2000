
if (ds_map_size(global.selected_squirrels) > 0) {

	for (var squirrel = ds_map_find_first(global.selected_squirrels); !is_undefined(squirrel); squirrel = ds_map_find_next(global.selected_squirrels, squirrel)) {
		if (squirrel.class == "soldier") continue
		var dest = squirrel.home_tree

		set_squirrel_path(squirrel, dest)
		squirrel.job = "in training"
		
	}
	
}
