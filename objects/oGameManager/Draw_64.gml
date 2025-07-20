draw_set_font(hubJogador)

var textScore =  "Score: " + string(oPlayer.playerScore)
draw_text(20, 20, textScore)

var ultimaBola

if(oPlayer.spriteUltimaBolaPega == sEnemyWhite) {
	ultimaBola = "Bola branca"
} else if (oPlayer.spriteUltimaBolaPega == sEnemyBlack){
	ultimaBola = "Bola preta"
} else {
	ultimaBola = "Nenhuma bola"
}

var textUltimaBola = "Bola atual: " + ultimaBola
draw_text(20, 50, textUltimaBola)