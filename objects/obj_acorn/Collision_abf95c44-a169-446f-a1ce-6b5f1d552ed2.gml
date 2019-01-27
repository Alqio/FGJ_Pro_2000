/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_acorn_crack
speed = 1
gravity = 0.5
if(!hit) {
	other.hp -= dmg
	show_debug_message(other.hp)
}
hit = true
