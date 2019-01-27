/// @description Insert description here
// You can write your code in this editor
draw_self()

if (selected) {
	draw_set_color(c_red)
	draw_rectangle(x - sprite_get_width(sprite_index)/2, y - sprite_get_height(sprite_index)/2, x + sprite_get_width(sprite_index)/2, y + sprite_get_height(sprite_index)/2, true)
}

draw_set_font(global.fnt_small)
draw_set_halign(fa_center)
draw_outline(job, x,y+10,c_red)
draw_set_halign(fa_left)