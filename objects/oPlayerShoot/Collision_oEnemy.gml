// 1. Unificamos tudo para um bloco só ser executado
if (sprite_index == sPlayerShootWhite && other.sprite_index == sEnemyBlack) {
    other.tamanho -= 0.5;
} 
else if (sprite_index == sPlayerShootWhite && other.sprite_index == sEnemyWhite) {
    other.tamanho += 0.5;
}
else if (sprite_index == sPlayerShootBlack && other.sprite_index == sEnemyWhite) {
    other.tamanho -= 0.5;
} 
else if (sprite_index == sPlayerShootBlack && other.sprite_index == sEnemyBlack) {
    other.tamanho += 0.5;
}

// 2. Checagem de morte (dentro da colisão é mais fácil)
if (other.tamanho <= 0) {
    oPlayer.playerScore += 3;
    instance_destroy(other); // Mata o inimigo
}

// 3. DESTROI O TIRO
// Isso impede que o tiro fique "em cima" do inimigo crescendo ele infinitamente
instance_destroy();