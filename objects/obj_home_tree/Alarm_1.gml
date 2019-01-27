/// @description Insert description here
// You can write your code in this editor

if (instance_number(obj_squirrel) < instance_number(obj_tree)/5) {
	squirrel = instance_create_depth(x,y,-5, obj_squirrel)
	global.points++
}

alarm[1] = irandom_range(600, 1200)