if (!instance_exists(target)) instance_destroy()

scale -= rspeed
if (scale < 0) {
	scale = 0
	finished = true
}
if (scale > 60) {
	scale = 60
	finished = true
}

rspeed += 0.007
alpha += 0.01

