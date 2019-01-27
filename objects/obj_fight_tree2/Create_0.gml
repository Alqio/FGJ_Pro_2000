/// @description Insert description here
// You can write your code in this editor

MAX_BRANCH = 6
left_branches = ds_list_create()
right_branches = ds_list_create()

trunk_width = 100
trunk_height = 500

hp = 100 * (global.current_fight_tree_hp / 10)

branch_y = y - 190

for(i = 0; i < MAX_BRANCH; i++) {
	
	if(i != 0 && i != MAX_BRANCH -1 ) {
		right = choose(0, 1)
	} else {
		right = 0
	}
	x_offset = irandom_range(10, 30)
	branch_x = x + x_offset + right * (80 - x_offset) 
	branch_y -= irandom_range(40, 50)
	branch = instance_create_depth(branch_x, branch_y, 0, obj_branch)
	
	if(!right) {
		branch.image_angle += 180
		ds_list_add(left_branches, branch)
		branch.heading = "left"
	} else {
		ds_list_add(right_branches, branch)
		branch.heading = "right"

	}
	ds_list_add(global.branches, branch)

}
