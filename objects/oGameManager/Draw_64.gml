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

