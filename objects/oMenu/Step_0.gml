var upPressed = keyboard_check_pressed(vk_up)  || keyboard_check_pressed(ord("W"))
var downPressed = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))

if(upPressed){
	optionSelected -= 1
}

if(downPressed){
	optionSelected += 1
}

if(optionSelected < 0){
	optionSelected = array_length(optionsMenu) - 1
}

if(optionSelected >= array_length(optionsMenu)){
	optionSelected = 0
}


if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)){
	switch(optionSelected){
		case 0:
			room_goto(rGame)
			break;
		case 1:
			game_end()
			break;
	}	
}

visualSelected = lerp(visualSelected, optionSelected, 0.1)