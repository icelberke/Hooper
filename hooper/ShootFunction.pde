void shoot(int ballX, int ballY, int hoopX, int hoopY) {
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
