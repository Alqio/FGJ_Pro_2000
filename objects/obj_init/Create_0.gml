/// @description Insert description here
// You can write your code in this editor

randomize()

global.points = 0

global.seeds = 5
global.resin = 0

global.tree_range = 300

global.path_start_node = noone
global.path_end_node = noone

global.selected_squirrels = ds_map_create()

global.selecting_plant_pos = false

global.squirrel_count = 2

//global.fnt_small = font_add("0b403", 12, false, false, 0, 255)
//draw_set_font(global.fnt_small)
room_goto_next()

