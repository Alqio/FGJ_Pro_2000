squirrel = argument0
destination = argument1


squirrel.path = find_path(squirrel.current_tree, destination)

//if a path wasn't found or we are already at the nearest tree
if (squirrel.path == noone) {
	if (squirrel.class != "soldier") squirrel.job = "collecting"
	exit
}

squirrel.job = "moving"

squirrel.final_destination = destination

ds_queue_enqueue(squirrel.path, destination)

squirrel.current_destination = ds_queue_head(squirrel.path)
