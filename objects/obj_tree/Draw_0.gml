/// @description Insert description here
// You can write your code in this editor
draw_self()

if (global.path_end_node == id) {
	draw_set_color(c_red)
	draw_rectangle(x - sprite_get_width(sprite_index)/2, y - sprite_get_height(sprite_index)/2, x + sprite_get_width(sprite_index)/2, y + sprite_get_height(sprite_index)/2, true)
}
if (global.path_start_node == id) {
	draw_set_color(c_yellow)
	draw_rectangle(x - sprite_get_width(sprite_index)/2, y - sprite_get_height(sprite_index)/2, x + sprite_get_width(sprite_index)/2, y + sprite_get_height(sprite_index)/2, true)
}
//draw_set_color(c_blue)
//draw_circle(x,y,global.tree_range, true)

for (i = 0; i < 360; i += 360/resins) {
	xx = x + r*dcos(i)
	yy = y + r*dsin(i)
	
	draw_sprite_ext(spr_resin, 0, xx, yy, 0.4, 0.4, 0, c_white, 0.8)
}