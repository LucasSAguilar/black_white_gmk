if(sprite_index == sPLayerStopped_White){
instance_destroy()
room_restart()
}

if(sprite_index == sPLayerStopped_Black){
instance_destroy(other)
playerScore += 1
show_debug_message(playerScore)

ultimaBolaPega = 2
}