/// @description Insert description here
// You can write your code in this editor
if (sprite_index == attack_sprite) {
	alarm[0] = attack_speed
	if (target != noone) {
		target.hp -= strength
		if (target.hp <= 0) {
			
			squirrel = instance_nearest(target.x,target.y,obj_squirrel)
			
			with (target) {
				instance_destroy()
			}
			squirrel.current_tree = instance_nearest(squirrel.x, squirrel.y, obj_tree)
			
		}
	}
	image_speed = 0
	//image_index = sprite_get_number(sprite_index) - 1
}