/// @description Insert description here
// You can write your code in this editor

hp_width = 210
hp_height = 60
hp_x = x - 50
hp_y = 20

draw_self()
draw_set_color(c_black)
draw_rectangle(hp_x, hp_y, hp_x + hp_width, hp_y + hp_height, false)
draw_set_color(c_red)
draw_rectangle(hp_x + 5, hp_y + 5, hp_x + hp_width - 5, hp_y + hp_height - 5, false)
draw_set_color(c_green)
draw_rectangle(hp_x + 5, hp_y + 5, hp_x + hp * 2 + 5, hp_y + hp_height - 5, false)