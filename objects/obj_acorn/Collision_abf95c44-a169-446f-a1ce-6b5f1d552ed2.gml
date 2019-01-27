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

if (!audio_is_playing(snd_acorn) && !sound_has_played) {
	audio_play_sound(snd_acorn, 1, false)
	audio_play_sound(snd_auts, 4, false)
	sound_has_played = true
}