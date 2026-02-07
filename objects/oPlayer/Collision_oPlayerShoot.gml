var collisionOccurred = false

if(sprite_index == sPLayerStopped_Black && other.sprite_index == sPlayerShootWhite){
	collisionOccurred = true
} else if(sprite_index == sPLayerStopped_White && other.sprite_index == sPlayerShootBlack){
	collisionOccurred = true
}


if(collisionOccurred){
	var dadosScore = hasNewHighScore(playerScore);
	if(dadosScore.hasNewRecord){
		saveNewRecordScore(playerScore)
	}
	stopAllGame()
}