if(sprite_index == sPlayerShootWhite && other.sprite_index == sEnemyBlack){
	instance_destroy(other)
	instance_destroy()
	oPlayer.playerScore += 1
}

if(sprite_index == sPlayerShootBlack && other.sprite_index == sEnemyWhite){
	instance_destroy(other)
	instance_destroy()
	oPlayer.playerScore += 1
}