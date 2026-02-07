function saveNewRecordScore(score){
	
	var dadosParaSalvar = {
		score: score,
		data: date_datetime_string(date_current_datetime())
	}
	
	var jsonString = json_stringify(dadosParaSalvar)
	var file = file_text_open_write("save.json")
	file_text_write_string(file, jsonString)
	file_text_close(file)
}

function loadHighScore(){
	if(!file_exists("save.json")) return 0
	var file = file_text_open_read("save.json")
	var jsonRetornado = file_text_read_string(file)
	file_text_close(file)
	var estruturaDados = json_parse(jsonRetornado)
	
	return estruturaDados.score
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