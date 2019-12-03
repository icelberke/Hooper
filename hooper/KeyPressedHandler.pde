void keyPressed() {
  if (key == 'a' && playerX - velocity > 0) {
    playerX -= velocity;
    if (player1HasBall == true) {
      ballX -= velocity;
    }
  }
  if (key == 'd' && playerX + velocity + 50 < 612) {
    playerX += velocity;
    if (player1HasBall == true) {
      ballX += velocity;
    }
  }
  if (key == 'w' && playerY - velocity > 0) {
    playerY -= velocity;
    if (player1HasBall == true) {
      ballY -= velocity;
    }
  }
  if (key == 's' && playerY + velocity + 50 < 355) {
    playerY += velocity;
    if (player1HasBall == true) {
      ballY += velocity;
    }
  }
  
  if (key == 'x') {
    shoot();
  }
  
}
