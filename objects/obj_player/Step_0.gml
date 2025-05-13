#macro jumph -13
#macro moves 6
scr_input()

switch state
{
	case states.normal:
		scr_player_idle()
		break;
	case states.jump:
		scr_player_jump()
		break;
}


if ysp < 0 && scr_solid(x, y - 1) {
	ysp = 0
}

scr_collide()

if grounded {
	jumpstop = false gravanger = false
}
if bbox_top > room_height
	y = 0 - ysp


if keyboard_check_direct(vk_backspace)
game_restart()







enum states
{
	normal,
	jump,
	
	
}