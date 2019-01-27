/// @description Insert description here
// You can write your code in this editor
alpha += alpha_change

if (alpha > max_alpha || alpha <= 0) alpha_change *= -1 

if (hp < 0) {
	instance_destroy()
	show_message("Game over! score: " + string(global.points))
}