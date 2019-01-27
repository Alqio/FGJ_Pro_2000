/// @description Insert description here
// You can write your code in this editor
if(!on_air && jump_to == noone && !on_trunk(id)) {
	sprite_index = spr_squirrel_branch_idle
}

if(on_trunk(id)) {
	image_speed = 0
}