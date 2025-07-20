if(sprite_index == sPlayerShootWhite && other.sprite_index == sEnemyBlack){
	destruirInimigo()
}

if(sprite_index == sPlayerShootBlack && other.sprite_index == sEnemyWhite){
	destruirInimigo()
}

function destruirInimigo(){
	instance_destroy(other)
	instance_destroy()
	oPlayer.playerScore += 1
}