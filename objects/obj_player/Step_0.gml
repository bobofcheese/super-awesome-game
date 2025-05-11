if keyboard_check(vk_left)
xsp = -5
else if keyboard_check(vk_right)
xsp = 5
else
xsp = 0


if keyboard_check_direct(vk_backspace)
game_restart()

if grounded && keyboard_check_pressed(vk_up)
ysp = -20 // normal jump thing is like 14

if ysp < 0 && place_meeting(x, y - 1, obj_solid)
{
	ysp = 0
}
scr_collide()