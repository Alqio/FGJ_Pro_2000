/// @description Insert description here
// You can write your code in this editor

if (choose(1,2) == 1) {
	xx = choose(-10, room_width + 10)
	yy = irandom(room_height)
} else {
	xx = irandom(room_width)
	yy = choose(-10, room_height + 10)
}


if (global.humans < global.max_humans) {
	instance_create_depth(xx, yy, -2, obj_world_human)
	global.humans++
}
alarm[0] = spawn_speed * random_range(0.8, 1.2)
