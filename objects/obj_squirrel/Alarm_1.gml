/// @description Insert description here
// You can write your code in this editor

if (global.resin >= 5) {
	i = instance_create_depth(x,y,depth, obj_soldier_squirrel)
	ds_map_delete(global.selected_squirrels, id)
	instance_destroy()
	global.resin -= 5
} else {
	job = "idle"
}
