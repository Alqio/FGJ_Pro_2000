tree = argument0

if (ds_map_size(global.selected_squirrels) > 0) {
	/*squirrel = ds_map_find_first(global.selected_squirrels)
	set_squirrel_path(squirrel, tree)
	squirrel.job = "moving"
	squirrel.sprite_index = spr_flying_squirrel
	for (i = 0; i < ds_map_size(global.selected_squirrels) - 1; i++) {
		squirrel = ds_map_find_next(global.selected_squirrels, squirrel)
		set_squirrel_path(squirrel, tree)
		squirrel.job = "moving"
		squirrel.sprite_index = spr_flying_squirrel
	}*/
	
	for (var squirrel = ds_map_find_first(global.selected_squirrels); !is_undefined(squirrel); squirrel = ds_map_find_next(global.selected_squirrels, squirrel)) {
		set_squirrel_path(squirrel, tree)
		squirrel.job = "moving"
		squirrel.sprite_index = spr_flying_squirrel
	}
}
