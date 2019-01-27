/// @description Insert description here
// You can write your code in this editor
if (sprite_index == attack_sprite) {
	alarm[0] = attack_speed
	
	if (target != noone) {
		
		if (!audio_is_playing(snd_axe_chop)) {
			audio_play_sound(snd_axe_chop, 0, false)
		}
		
		target.hp -= strength
		if (target.hp <= 0) {
			
			var tree = target
			with (target) {
				instance_destroy()
			}
			with (obj_squirrel) {
				if (current_tree == tree) {
					current_tree = instance_nearest(x, y, obj_tree)
				}
			}
			
		}
	}
	image_speed = 0
	
}