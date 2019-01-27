/// @description Insert description here
// You can write your code in this editor
scale = random_range(0.5, 1.5)

spd = 2 / scale

target = noone

strength = 1 * scale
attack_range = 3
attack_speed = 20

attack_sprite = spr_attacking_human
walk_sprite = spr_walking_human
can_attack = false

escaping = false
escape_point_x = noone
escape_point_y = noone