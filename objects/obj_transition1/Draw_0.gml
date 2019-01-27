/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surf)) {
	surf = surface_create(room_width, room_height)
	surface_set_target(surf)
	//draw_set_color(c_black)
	//draw_set_alpha(0)
	//draw_rectangle(0, 0, room_width, room_height, false)
	draw_clear_alpha(c_black, 0);
	
	surface_reset_target()
	
} else if (surface_exists(surf)) {
	surface_set_target(surf)
	draw_set_color(c_black)
	draw_set_alpha(alpha)
	//gpu_set_blendmode(bm_normal)
	draw_rectangle(0,0,room_width, room_height, false)
	gpu_set_blendmode(bm_subtract)
	//draw jotain
	//draw_set_color(c_white)
	//draw_circle(target.x, target.y, r, false)
	draw_sprite_ext(spr_circle,0,target.x, target.y, scale, scale, 0, c_white, 1)
	
	gpu_set_blendmode(bm_normal)
	draw_set_alpha(1)
	surface_reset_target()
	draw_surface(surf, 0, 0)

}