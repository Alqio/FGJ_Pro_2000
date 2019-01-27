/// @description Insert description here
// You can write your code in this editor

draw_self()
acorn_icon = instance_create_depth(room_width - 100, 20, -3, obj_acorn_collectable)
draw_set_color(c_white)
draw_outline("x " + string(acorns), room_width - 50, 20, c_black)
