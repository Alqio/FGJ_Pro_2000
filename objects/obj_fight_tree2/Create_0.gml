/// @description Insert description here
// You can write your code in this editor

MAX_BRANCH = 5
branches = []
TRUNK_OFFSET_X = 370

for(i = 0; i < MAX_BRANCH; i++) {
	branch_x = x + TRUNK_OFFSET_X + i % 2 * 50 
	branch_y = y + 300 + i * 50
	branch = instance_create_depth(branch_x, branch_y, 0, obj_branch)
	branch.image_angle = (i % 2 + 1) * 180
	branch.length = 200
	branches[i] = branch
}