var angle = point_direction(x, y, mouse_x, mouse_y) + 180;
var speedG = 20;

var nivelBola = 1
var vidaTiro = 1

if(oPlayer.quantidadeBolasPegas >= 3 && oPlayer.quantidadeBolasPegas < 6){
	nivelBola = 2
	vidaTiro = 2
}

if(oPlayer.quantidadeBolasPegas >= 6){
	nivelBola = 3
	vidaTiro = 3
}

spdX = lengthdir_x(speedG, angle);
spdY = lengthdir_y(speedG, angle);