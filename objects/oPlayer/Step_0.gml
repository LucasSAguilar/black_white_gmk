if(keyboard_check(vk_left) && !(x < 0)){
	x -= spd
}

if(keyboard_check(vk_right)  && !(x > room_width )){
	x += spd
}

if(keyboard_check(vk_up)  && !(y < 0)){
	y -= spd
}

if(keyboard_check(vk_down)  && !(y > room_height)){
	y += spd
}

if(keyboard_check_pressed(vk_space)){
	sprite_index = sprite_index == sPLayerStopped_White ? sPLayerStopped_Black : sPLayerStopped_White
}

if((sprite_index == sPLayerStopped_Black && ultimaBolaPega == 1) || (sprite_index == sPLayerStopped_White && ultimaBolaPega == 2)){
	room_restart()
	show_debug_message(ultimaBolaPega)
}

