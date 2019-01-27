
if (ds_map_size(global.selected_squirrels) > 0) {

	for (var squirrel = ds_map_find_first(global.selected_squirrels); !is_undefined(squirrel); squirrel = ds_map_find_next(global.selected_squirrels, squirrel)) {
		
		if (squirrel.class != "soldier") continue
		
		var tree = squirrel.current_tree
		//TODO: start attacking
		with (obj_human) {
			if (target == tree && distance_to_object(target) <= attack_range) {
				//escaping = true
				create_transition(tree)
			}
		}
		
	}
	
}
