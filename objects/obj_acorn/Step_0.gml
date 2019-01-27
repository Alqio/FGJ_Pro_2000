/// @description Insert description here
// You can write your code in this editor

if(hit){
	image_alpha -= 0.01
}

if(image_alpha < 0.1) {
	instance_destroy()
}