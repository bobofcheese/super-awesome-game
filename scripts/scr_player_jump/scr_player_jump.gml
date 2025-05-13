function scr_player_jump(){
	var move = key_left + key_right
	var goal = (gravanger ? moves / 3 : moves)
		xsp = approach(xsp, goal * move, (gravanger ? 0.2 : 1))
	
	if key_down2 {
		gravanger = true
		if ysp < 0
			ysp = 0	
	}
	grav = gravanger ? 2 : 0.5
	
	var maxfall = gravanger ? 80 : 40
	if ysp >= maxfall
		ysp = maxfall
	
	if !jumpstop && !key_jump && ysp < grav
	{
		ysp += grav
		jumpstop = true
	}
	else if jumpstop
	{
		if ysp < 0
			ysp += grav
		else
			jumpstop = false
	}
	if cayote != 0 && buffer_jump > 0
	{
		ysp = jumph
		state = states.jump
		buffer_jump = 0
		cayote = 0
	}
	if cayote > 0
		cayote--
	
	if grounded
		state = states.normal
	return;
}