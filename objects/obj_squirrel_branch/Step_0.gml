/// @description Insert description here
// You can write your code in this editor
all_branches = ds_list_create()
ds_list_copy(all_branches, tree.left_branches)

for(var i=0;i<ds_list_size(tree.right_branches);i++) {
    ds_list_add(all_branches, ds_list_find_value(tree.right_branches, i))
}

for(i = 0; i < ds_list_size(all_branches); i++) {
	b = ds_list_find_value(all_branches, i)
	if(on_branch(x,y,b)) {
		branch = b
		if(branch.heading == "right"){
			y = branch.y - 10
		} else {
			y = branch.y + 5
		}
	}
}
if(jump_to != noone) {
	
	if(on_branch(x,y, jump_to)) {
		speed = 0
		branch = jump_to
		tree = tree.neighbour
		jump_to = noone
		on_air = false
		image_xscale = 1
		spd = 3
	} else if(!on_air){
		sprite_index = spr_squirrel_fly_prepare
		
	}
	
}
