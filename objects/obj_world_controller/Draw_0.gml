/// @description Insert description here
// You can write your code in this editor

draw_outline("Seeds: " + string(global.seeds) + "\nResin: " + string(global.resin), room_width - 128, 48, c_yellow)
draw_set_halign(fa_center)
draw_outline("SCORE: " + string(global.points), room_width / 2, 32, c_yellow)
draw_set_halign(fa_left)