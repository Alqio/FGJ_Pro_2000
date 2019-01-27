/// @description Insert description here
// You can write your code in this editor

MAX_BRANCH = 6
left_branches = ds_list_create()
right_branches = ds_list_create()

trunk_width = 100
trunk_height = 500

hp = 100

for(i = 0; i < MAX_BRANCH; i++) {
	branch_x = x + 30 + i % 2 * 50 
	branch_y = y - 250 - i * 40
	branch = instance_create_depth(branch_x, branch_y, 0, obj_branch)
	if((i%2 - 1) * -1) {
		branch.image_angle += 180
		ds_list_add(left_branches, branch)
		branch.heading = "left"
	} else {
		ds_list_add(right_branches, branch)
		branch.heading = "right"

	}
	ds_list_add(global.branches, branch)

}
