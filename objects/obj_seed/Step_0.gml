/// @description Insert description here
// You can write your code in this editor
move_towards_point(target_x, target_y, spd)

if (distance_to_point(target_x, target_y) < 1) {
	i = instance_create_depth(x,y, -1, obj_growing_tree)
	instance_destroy()
}
image_angle = direction