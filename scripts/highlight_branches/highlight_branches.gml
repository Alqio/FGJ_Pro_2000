possible_branches = argument0
sqrl = argument1

for(i = 0; i < ds_list_size(possible_branches); i++) {
	br = ds_list_find_value(possible_branches, i)
	if(br.y - 50 > sqrl.y) {
		br.sprite_index = spr_branch_glow
		br.is_jump_candidate = true
	}
}