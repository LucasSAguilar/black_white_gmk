var posX = 40
var posY = 30
var gapMenu = 40

var cursorY = posY + (visualSelected * gapMenu)

draw_set_colour(c_yellow)
draw_set_font(fMainMenu)
draw_text(posX - 25, cursorY, ">")

for (var i = 0; i < array_length(optionsMenu); i++  ){
	
	draw_set_colour(optionSelected == i ? c_white : c_gray)
	draw_text(posX, posY,optionsMenu[i])
	posY += gapMenu

}

