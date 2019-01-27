/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite(icon_sprite, icon_index, x, y)

if (hover) {
	draw_set_font(global.fnt_medium)
	draw_outline(text, x, y + 48, c_yellow)
}
