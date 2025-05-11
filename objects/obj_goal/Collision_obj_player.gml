if keyboard_check(vk_up)
{
	game_restart()
}
if room != TestRoom_jinx && keyboard_check_pressed(ord("L"))
{
	room_goto(TestRoom_jinx)
}