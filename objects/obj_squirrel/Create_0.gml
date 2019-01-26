/// @description Insert description here
// You can write your code in this editor
job = "collecting"

path = noone

//moving
final_destination = noone
current_destination = noone
current_tree = instance_nearest(x,y, obj_tree)
moving = false

spd = 3
class = "citizen"

selected = false 

climb_speed = 0.003
original_scale = 1
image_xscale = original_scale
image_yscale = original_scale
climbing = false

wants_to_plant = false
plant_pos_x = x
plant_pos_y = y

depth = -50