if(!oGameManager.isGameRunning) {return}

var posXPlayer = oPlayer.x
var posYPlayer = oPlayer.y

var posX
var posY
do {
	posX = random_range(0, window_get_width() - 40)
	posY = random_range(0, window_get_height() - 40)
} until (abs(posXPlayer - posX) > 250 && abs(posYPlayer - posY) > 250)

var newEnemy = instance_create_layer(posX, posY, layer, oEnemy);
newEnemy.sprite_index = choose(sEnemyBlack, sEnemyWhite)



if(oPlayer.playerScore >= checkPointScore + 15 && (minMilSecondsToSpawnEnemy >= 10 && maxMilSecondsToSpawnEnemy >= 10)){
	checkPointScore += 15
	minMilSecondsToSpawnEnemy -= 10
	maxMilSecondsToSpawnEnemy -= 10
}

alarm[0] = random_range(minMilSecondsToSpawnEnemy, maxMilSecondsToSpawnEnemy);
