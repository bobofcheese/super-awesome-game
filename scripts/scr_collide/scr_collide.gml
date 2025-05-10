function scr_collide_init(){
	grounded = true
	xsp = 0
	ysp = 0
	grav = 0.5
}

function scr_collide(){
	var xprev = x;
	var yprev = y;
	
	if !place_meeting(x + xsp, y, obj_solid)
	{
		x += xsp
	}
	else
	{
		while !place_meeting(x, y, obj_solid)
		{
			x += sign(xsp)
		}
		x -= sign(xsp)
	}
	if !place_meeting(x, y + ysp, obj_solid)
	{
		y += ysp
	}
	else
	{
		while !place_meeting(x, y, obj_solid)
		{
			y += sign(ysp)
		}
		y -= sign(ysp)
	}
	if !place_meeting(x, y + 1, obj_solid)
	{
		grounded = false
		ysp += grav
	}
	else
	{
		ysp = grav
		grounded = true
	}
	return;
}