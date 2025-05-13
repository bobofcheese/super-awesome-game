if keyboard_check_pressed(vk_up) && other.grounded
{
	game_restart()
}
if room != TestRoom_jinx && keyboard_check_pressed(ord("L"))
{
	room_goto(TestRoom_jinx)
}