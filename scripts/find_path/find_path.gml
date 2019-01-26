///find_path(start, goal)

start = argument0
goal = argument1

global.mins = ds_map_create()
global.prev = ds_map_create()

with (obj_tree) {
	ds_map_add(global.mins, id, 1000000)
	ds_map_add(global.prev, id, id)
}

ds_map_replace(global.mins, start, 0)

queue = ds_priority_create()

ds_priority_add(queue, start, 0)

looped = 0

while (ds_priority_size(queue) > 0) {
	node = ds_priority_delete_min(queue)
	//show_debug_message("looped: " + string(looped))
	//show_debug_message("node: " + string(node))
	nearest_trees = find_nearest_trees(node, global.tree_range)
	fn = ds_map_find_value(global.mins, node) + point_distance(node.x, node.y, goal.x, goal.y)
	//show_debug_message("ds_map_find_value(global.mins, node): " + string(ds_map_find_value(global.mins, node)))
	
	if (fn < ds_map_find_value(global.mins, goal)) {
		
		for (i = 0; i < ds_list_size(nearest_trees); i++) {

			m = ds_list_find_value(nearest_trees, i)

			
			dist = point_distance(node.x, node.y, m.x, m.y)
			
			min_n = ds_map_find_value(global.mins, node)
			min_m = ds_map_find_value(global.mins, m)

			//show_debug_message("ds_map_find_value(global.mins, goal): " + string(ds_map_find_value(global.mins, goal)))
			//show_debug_message("min_n: " + string(min_n) + ", min_m: " + string(min_m) + ", dist: " + string(dist))
			
			if (min_n + dist < min_m) {

				ds_map_replace(global.mins, m, min_n + dist)
				ds_map_replace(global.prev, m, node)

				if (m != goal) {
					ds_priority_add(queue, m, ds_map_find_value(global.mins, m) + point_distance(m.x, m.y, goal.x, goal.y))
				}
			}
			
		}
	}
	ds_list_destroy(nearest_trees)
	looped++
}

ds_priority_destroy(queue)
ds_map_destroy(global.mins)

point = ds_map_find_value(global.prev, goal)

if (point == goal) {
	ds_map_destroy(global.prev)
	
	return noone
}

path = ds_list_create()

point = goal

while (point != start) {
	ds_list_add(path, point)
	point = ds_map_find_value(global.prev, point)
	//show_debug_message("point: " + string(point))
	//show_debug_message("ds_map_find_value(global.prev, point): " + string(ds_map_find_value(global.prev, point)))
}

ds_map_destroy(global.prev)
ds_list_add(path, start)

//fpath = ds_list_create()

fpath = ds_queue_create()

for (i = ds_list_size(path) - 1; i >= 0; i --) {
//for (i = 0; i < ds_list_size(path); i++) {
	//ds_list_add(fpath, ds_list_find_value(path, i))
	ds_queue_enqueue(fpath, ds_list_find_value(path, i))

}

return fpath