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
	
	
	if grounded
		state = states.normal
	return;
}