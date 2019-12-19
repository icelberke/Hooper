void shoot() {
  if (player1HasBall && shotSuccessCalculator()) {
    player1HasBall = false;
    while (ballX != hoopX || ballY != hoopY) {
      if (ballX > hoopX) {
        ballX -= 1;
      }
      if (ballX < hoopX) {
        ballX += 1;
      }
      if (ballY > hoopY) {
        ballY -= 1;
      }
      if (ballY < hoopY) {
        ballY += 1;
      }
    }
  }
}
