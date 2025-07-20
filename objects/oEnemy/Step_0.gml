x -= spdX
y-= spdY


if (x < 0 || x > room_width){
	spdX =- spdX
}

if (y < 0 || y > room_height){
	spdY =- spdY
}