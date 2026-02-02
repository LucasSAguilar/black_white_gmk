collisionOccurred = false

if(sprite_index == sPLayerStopped_Black && other.sprite_index == sEnemyWhite){
	collisionOccurred = true
} else if(sprite_index == sPLayerStopped_White && other.sprite_index == sEnemyBlack){
	collisionOccurred = true
} else {
	playerScore += 1
	spriteUltimaBolaPega = other.sprite_index
	quantidadeBolasPegas += 1
	instance_destroy(other)
}


if(collisionOccurred){
	var dadosScore = hasNewHighScore(playerScore);
	if(dadosScore.hasNewRecord){
		saveNewRecordScore(playerScore)
	}
	room_restart()
}