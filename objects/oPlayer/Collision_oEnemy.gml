if(sprite_index == sPLayerStopped_Black && other.sprite_index == sEnemyWhite){
	room_restart()
} else if(sprite_index == sPLayerStopped_White && other.sprite_index == sEnemyBlack){
	room_restart()
} else {
	playerScore += 1
	spriteUltimaBolaPega = other.sprite_index
	quantidadeBolasPegas += 1
	instance_destroy(other)
}