draw_set_font(hubJogador)
draw_set_colour(c_white)

var textScore =  "Score: " + string(oPlayer.playerScore)
draw_text(20, 20, textScore)

var ultimaBola

if(oPlayer.spriteUltimaBolaPega == sEnemyWhite) {
	ultimaBola = "Bola branca"
} else if (oPlayer.spriteUltimaBolaPega == sEnemyBlack){
	ultimaBola = "Bola preta"
} else {
	ultimaBola = "..."
}

var textUltimaBola = "Bola atual: " + ultimaBola
draw_text(20, 50, textUltimaBola)


if(!isGameRunning){
	var guiW = display_get_gui_width()
	var guiH = display_get_gui_height()
	
	draw_set_alpha(screenDarkBackgroundAlpha)
	draw_set_colour(c_black)
	draw_rectangle(0, 0, guiW, guiH, false)
	
	draw_set_alpha(gameOverAlpha)
	draw_set_colour(c_white)
	draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	
	var highScore = loadHighScore()
    
	draw_text(guiW/2, guiH/2 - 80, "Seu score: " + string(oPlayer.playerScore))
	draw_text(guiW/2, guiH/2 - 40, "Record atual: " + string(highScore))
    draw_text(guiW/2, guiH/2, "Pressione 'R' para reiniciar");
	draw_text(guiW/2, guiH/2 + 40, "Pressione 'ESC' para ir ao menu");
    
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
	
	draw_set_alpha(1)
}