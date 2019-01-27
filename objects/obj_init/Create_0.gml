/// @description Insert description here
// You can write your code in this editor

randomize()

global.points = 0

global.seeds = 5
global.resin = 6

global.tree_range = 300

global.returning_to_world = false
global.lost_fight = false

global.path_start_node = noone
global.path_end_node = noone

global.current_fight_tree = noone
global.current_fight_tree_hp = 0


global.selected_squirrels = ds_map_create()

global.selecting_plant_pos = false


global.fnt_small = font_add("04B_03__.TTF", 12, false, false, 32, 128)
global.fnt_medium = font_add("04B_03__.TTF", 16, false, false, 32, 128)
global.fnt_large = font_add("04B_03__.TTF", 24, false, false, 32, 128)
global.fnt_huge = font_add("04B_03__.TTF", 36, false, false, 32, 128)
draw_set_font(global.fnt_medium)

global.squirrel_count = 2

room_goto_next()

