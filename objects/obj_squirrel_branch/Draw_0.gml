/// @description Insert description here
// You can write your code in this editor

draw_self()
acorn_icon = instance_create_depth(room_width - 100, 20, -3, obj_acorn_collectable)

draw_set_font(global.fnt_medium)
draw_outline("x " + string(acorns), room_width - 64, 20, c_yellow)
