squirrel = argument0
destination = argument1

squirrel.final_destination = destination


squirrel.path = find_path(squirrel.current_tree, destination)

//if a path wasn't found or we are already at the nearest tree
if (squirrel.path == noone) exit

ds_queue_enqueue(squirrel.path, destination)

squirrel.current_destination = ds_queue_head(squirrel.path)
