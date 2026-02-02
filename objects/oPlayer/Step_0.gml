var moveX = 0;
var moveY = 0;

if (keyboard_check(ord("A"))) moveX -= 1;
if (keyboard_check(ord("D"))) moveX += 1;
if (keyboard_check(ord("W"))) moveY -= 1;
if (keyboard_check(ord("S"))) moveY += 1;

if (moveX != 0 || moveY != 0) {
    var len = point_distance(0, 0, moveX, moveY);
    var dx = (moveX / len) * spd;
    var dy = (moveY / len) * spd;

    if (x + dx >= 0 && x + dx <= room_width) {
        x += dx;
    }
    if (y + dy >= 0 && y + dy <= room_height) {
        y += dy;
    }
	
	if(moveX == -1){
		image_xscale = -1
	} else if (moveX == 1){
		image_xscale = 1
	}
}

if(keyboard_check_pressed(vk_space)){
	sprite_index = sprite_index == sPLayerStopped_White ? sPLayerStopped_Black : sPLayerStopped_White
}


if(keyboard_check_pressed(vk_control)){
	if(spriteUltimaBolaPega == noone){
		return
	}
	
	var shotCreated = instance_create_layer(x, y, layer, oPlayerShoot)
	
	if(spriteUltimaBolaPega == sEnemyBlack){
		shotCreated.sprite_index = sPlayerShootBlack
	} else {
		shotCreated.sprite_index = sPlayerShootWhite
	}
	spriteUltimaBolaPega = noone
}

if((sprite_index == sPLayerStopped_Black && spriteUltimaBolaPega == sEnemyWhite) || (sprite_index == sPLayerStopped_White && spriteUltimaBolaPega == sEnemyBlack)){
	var dadosScore = hasNewHighScore(playerScore);
	if(dadosScore.hasNewRecord){
		saveNewRecordScore(playerScore)
	}
	
	room_restart()
}

