/// @description Insert description here
// You can write your code in this editor
if (path != noone) {
	draw_set_color(c_red)
	for (i = 0; i < ds_list_size(path) - 1; i++) {
		n = ds_list_find_value(path, i)
		m = ds_list_find_value(path, i+1)
		draw_set_color(c_green)
		draw_line(n.x, n.y, m.x, m.y)
	}
}