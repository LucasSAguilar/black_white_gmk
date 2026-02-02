function saveNewRecordScore(score){
	ini_open("save.ini")
	ini_write_real("Progresso", "high_score", score)
	ini_close()
}

function loadHighScore(){
	ini_open("save.ini")
	var lastScore = ini_read_real("Progresso", "high_score", 0)
	ini_close()
	
	return lastScore
}

function hasNewHighScore(newScore){
	var lastHighScore = loadHighScore()
	var hasNewRecord = lastHighScore < newScore
	
	var dados = {
		hasNewRecord: hasNewRecord,
		lastHighScore: lastHighScore
	}
	
	return dados
}