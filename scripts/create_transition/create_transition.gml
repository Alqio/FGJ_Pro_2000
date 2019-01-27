transition = argument0

if (transition == "fade") {
	i = instance_create_layer(x,y, "Lightning", obj_transition2)
} else {
	i = instance_create_layer(x,y, "Lightning", obj_transition1)
	i.target = argument[1]
}



if (room == rm_world) i.rm = rm_fight
if (room == rm_fight) i.rm = rm_world