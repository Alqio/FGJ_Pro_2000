global.fight_is_on = false
with(obj_human) {
	dmg = 0
	sprite_index = spr_human_idle
}
		
if (instance_number(obj_transition2) < 1) {
	script_execute(create_transition, "fade")
	global.seeds += global.squirrel.acorns
}

