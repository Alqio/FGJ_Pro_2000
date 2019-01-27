/// @description Insert description here
// You can write your code in this editor

if(on_branch(x,y,branch) && !on_trunk(id) && acorns > 0){
	acorn = instance_create_depth(x, y, -3, obj_acorn)
	acorn.dmg = (600-y)/10
	acorns--
}