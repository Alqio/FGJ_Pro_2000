/// @description Insert description here
// You can write your code in this editor
if (sprite_index = spr_human_attack) {
	if (!audio_is_playing(snd_axe_chop1)) {
		
		audio = choose(snd_axe_chop1, snd_axe_chop2, snd_axe_chop3)
		audio_play_sound(audio, 0, false)
	}
}