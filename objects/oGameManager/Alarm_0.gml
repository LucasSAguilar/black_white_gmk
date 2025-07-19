var posXPlayer = oPlayer.x
var posYPlayer = oPlayer.y

var posX
var posY
do {
	posX = random_range(0, window_get_width())
	posY = random_range(0, window_get_height())
} until (abs(posXPlayer - posX) > 250 && abs(posYPlayer - posY) > 250)

var bolaPreta = instance_create_layer(posX, posY, layer, choose(oEnemyWhite, oEnemyBlack));
alarm[0] = random_range(60, 100);