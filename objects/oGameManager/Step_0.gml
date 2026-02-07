if(isGameRunning) { return }

screenDarkBackgroundAlpha = lerp(screenDarkBackgroundAlpha, 0.80, 0.30)
gameOverAlpha = abs(sin(current_time / 400))

if(keyboard_check_pressed(ord("R"))){
	room_restart()
}

if(keyboard_check_pressed(vk_escape)){
	room_goto(rMainMenu)
}
