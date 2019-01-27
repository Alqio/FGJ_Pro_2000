/// @description Insert description here
// You can write your code in this editor
tree = instance_nearest(mouse_x, mouse_y, obj_tree)
if (point_distance(mouse_x, mouse_y, tree.x, tree.y) < global.tree_range) {
	set_squirrels_to_move(tree)
}
point = instance_create_depth(mouse_x, mouse_y, -5, obj_move_point)

with (obj_action_button) instance_destroy()