function scr_player_idle(){
	var move = key_left + key_right
	xsp = moves * move
	
	if grounded && key_jump2
	{
		ysp = jumph
		state = states.jump
	}
	if !grounded
		state = states.jump
	
	
	return;
}