if (!instance_exists(obj_seed_button)) {
	b = instance_create_depth(32, 32, -100, obj_seed_button)
}
if (!instance_exists(obj_attack_button)) {
	b = instance_create_depth(32 + 64, 32, -100, obj_attack_button)
}
if (!instance_exists(obj_barracks_button)) {
	b = instance_create_depth(32 + 128, 32, -100, obj_barracks_button)
}