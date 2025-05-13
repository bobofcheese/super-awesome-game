function scr_player_idle(){
	var move = key_left + key_right
	xsp = moves * move
	
	if grounded && buffer_jump > 0
	{
		ysp = jumph
		state = states.jump
		buffer_jump = 0
		cayote = 0
	}
	if !grounded
		state = states.jump
	
	
	return;
}