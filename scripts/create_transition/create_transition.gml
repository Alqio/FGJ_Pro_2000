i = instance_create_layer(x,y, "Lightning", obj_transition1)
i.target = argument0
if (room == rm_world) i.rm = rm_fight

with (i) {
	//instance_deactivate_all(true)
}
