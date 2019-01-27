
tree = argument0
range = argument1

global.temp_trees = ds_list_create()

with(obj_tree) {
	ds_list_add(global.temp_trees, id)
}
nearest_trees = ds_list_create()

for (i = 0; i < ds_list_size(global.temp_trees); i++) {
	other_tree = ds_list_find_value(global.temp_trees, i)
	
	if (tree != other_tree && point_distance(tree.x, tree.y, other_tree.x, other_tree.y) < range ) {
		ds_list_add(nearest_trees, other_tree)
	}
}
ds_list_destroy(global.temp_trees)

return nearest_trees;