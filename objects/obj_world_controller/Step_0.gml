/// @description Insert description here
// You can write your code in this editor
if (global.returning_to_world) {
	//TODO if lost, then this
	if (global.lost_fight) {
		with (global.current_fight_tree) {
			show_debug_message("destroying fight tree of index: " + string(global.current_fight_tree))
			instance_destroy()
		
		}
		
		with (obj_squirrel) {
			if (current_tree == global.current_fight_tree) {
				current_tree = instance_nearest(x,y,obj_tree)
			}
		}
		
	} else {
		with (obj_world_human) {
			if (target == global.current_fight_tree) escaping = true
		}
	}
	global.returning_to_world = false
	with (obj_spawner) alarm[0] = irandom_range(0, 500/instance_number(obj_squirrel))
	
	if (audio_is_playing(msc_fight_background)) {
		audio_stop_sound(msc_fight_background)
	}
	
	if (!audio_is_playing(msc_world_background)) {
		audio_play_sound(msc_world_background, 6, true)
	}
	
}