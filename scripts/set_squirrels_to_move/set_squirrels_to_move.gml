var tree = argument0

if (ds_map_size(global.selected_squirrels) > 0) {

	print_map(global.selected_squirrels)
	
	to_del = ds_list_create()
	
	for (var squirrel = ds_map_find_first(global.selected_squirrels); !is_undefined(squirrel); squirrel = ds_map_find_next(global.selected_squirrels, squirrel)) {
		set_squirrel_path(squirrel, tree)
		
		squirrel.sprite_index = squirrel.fly_sprite
		
		ds_list_add(to_del, squirrel.id)
		
	}
	for (i = 0; i < ds_list_size(to_del); i++) {
		squirrel = ds_list_find_value(to_del, i)
		squirrel.selected = false
		ds_map_delete(global.selected_squirrels, squirrel.id)
	}
	ds_list_destroy(to_del)
}
