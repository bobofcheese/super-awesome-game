function scr_collide_init(){
	grounded = true
	xsp = 0
	ysp = 0
	grav = 0.5
}

function scr_collide(){
	
	// x
	var xfinal = round(x + xsp)
	if !scr_solid(xfinal, y)
	{
		x = xfinal
	}
	else
	{
		while !scr_solid(x + sign(xsp), y)
		{
			x += sign(xsp)
		}
	}
	
	// y
	var yfinal = round(y + ysp)
	if !scr_solid(x, yfinal)
	{
		y = yfinal
	}
	else
	{
		while !scr_solid(x, y + sign(ysp))
		{
			y += sign(ysp)
		}
	}
	
	
	if !scr_solid(x, y + 1) {
		grounded = false
		ysp += grav }
	else {
		ysp = grav
		grounded = true }
	return;
}