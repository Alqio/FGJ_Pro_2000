/// @description Insert description here
// You can write your code in this editor

if(sprite_index == spr_squirrel_fly_prepare) {
	spd = 6
	if(jump_to.heading == "left"){
		move_towards_point(jump_to.x - jump_to.length + 10, jump_to.y, spd)
	} else {
		image_xscale *= -1
		move_towards_point(jump_to.x + jump_to.length - 10, jump_to.y, spd)
	}
	sprite_index = spr_squirrel_fly
	on_air = true
	
}