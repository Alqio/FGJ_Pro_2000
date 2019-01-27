map = argument0

k = ds_map_find_first(map)
v = ds_map_find_value(map, k)
	show_debug_message(string(k) + " -> " + string(v))
	
for (i = 0; i < ds_map_size(map)-1; i++) {
	k = ds_map_find_next(map, k)
	v = ds_map_find_value(map, k)
	show_debug_message(string(k) + " -> " + string(v))
}

