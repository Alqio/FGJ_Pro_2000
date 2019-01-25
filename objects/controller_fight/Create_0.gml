/// @description Insert description here
// You can write your code in this editor
tree1 = instance_create_depth(-50, -30, 1, obj_fight_tree)
tree2 = instance_create_depth(400, -30, 1, obj_fight_tree2)

squirrel = instance_create_depth(tree1.branches[1].x, tree1.branches[1].y, -1, obj_squirrel_branch)
squirrel.branch = tree1.branches[1]