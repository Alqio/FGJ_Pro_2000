/// @description Insert description here
// You can write your code in this editor

global.fight_is_on = true
global.humans_runaway = 0

global.trees = ds_list_create()
global.humans = ds_list_create()
global.branches = ds_list_create()

tree1 = instance_create_depth(200, 700, 1, obj_fight_tree)
tree2 = instance_create_depth(1000, 700, 1, obj_fight_tree2)

tree1.neighbour = tree2
tree2.neighbour = tree1

ds_list_add(global.trees, tree1, tree2)

start_branch= ds_list_find_value(tree1.right_branches, 0)
global.squirrel = instance_create_depth(start_branch.x, start_branch.y, -1, obj_squirrel_branch)
global.squirrel.tree = tree1
global.squirrel.branch = start_branch

human = instance_create_depth(tree1.x + tree1.trunk_width + 50, tree1.y + 40, -2, obj_human)
human.on_spot = 1
global.slots[1] = true