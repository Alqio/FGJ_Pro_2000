/// @description Move down
// You can write your code in this editor

if(on_trunk(id) && y+spd < tree.y) {
	y += spd
	sprite_index =spr_squirrel_climb
	image_speed = 0.2

}