function scr_input_init(){
	// hold
	key_jump = 0
	key_left = 0
	key_right = 0
	key_up = 0
	key_down = 0
	// pressed
	key_jump2 = 0
	key_left2 = 0
	key_right2 = 0
	key_up2 = 0
	key_down2 = 0
}

function scr_input(){
	// hold
	key_jump = keyboard_check(ord("Z"))
	key_left = -keyboard_check(vk_left)
	key_right = keyboard_check(vk_right)
	key_up = keyboard_check(vk_up)
	key_down = keyboard_check(vk_down)
	// pressed
	key_jump2 = keyboard_check_pressed(ord("Z"))
	key_left2 = -keyboard_check_pressed(vk_left)
	key_right2 = keyboard_check_pressed(vk_right)
	key_up2 = keyboard_check_pressed(vk_up)
	key_down2 = keyboard_check_pressed(vk_down)
}