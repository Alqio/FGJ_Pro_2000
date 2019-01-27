
alpha += 0.01

if (alpha >= 1) {
	room_goto(rm)
	global.returning_to_world = true
}

