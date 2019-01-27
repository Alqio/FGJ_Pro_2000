/// @description Insert description here
// You can write your code in this editor

if (instance_number(obj_tree) <= 0 || !instance_exists(obj_home_tree)) {
	show_message("Game over! Score: " + string(global.points))
}