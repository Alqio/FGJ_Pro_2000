/// @description Move left
// You can write your code in this editor
reset_branch_sprites(id)

if(jump_to == noone && !on_air) {
	
	if(x-spd > tree.x || on_branch(x-spd, y, branch)) {
		x -=spd
		sprite_index = spr_squirrel_branch_walk
		image_speed = 0.8
	}else if(!on_trunk(id) && !on_branch(x-spd, y, branch)&& tree != ds_list_find_value(global.trees, 0)) {
		highlight_branches(tree.neighbour.right_branches, id)
	}
	if(on_trunk(id)){
		sprite_index = spr_squirrel_climb
		image_speed = 0.2
	}
}