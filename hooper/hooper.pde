//variable declaration
int playerX = 159;
int playerY = 154;

int ballX = 295;
int ballY = 165;

PImage courtImg, ball;

//functions
void keyPressed() {
  if (key == 'a') {
    playerX -= 5;
  }
  if (key == 'd') {
    playerX += 5;
  }
  if (key == 'w') {
    playerY -= 5;
  }
  if (key == 's') {
    playerY += 5;
  }
  
}
void createPlayer() {
  rect(playerX, playerY, 50, 50);
}

void drawCircle() {
  image(ball, ballX, ballY, 25, 25);
}

void rebound() {
  if (ballX - playerX <= 50 && ballY - playerY <= 50){
    ballX = 550;
  }
}


//loops
void setup() {
  size(612, 355);
  courtImg = loadImage("basketball-court-clipart.jpg");
  ball = loadImage("ball.png");
}

void draw() {
  background(courtImg);
  rebound();
  createPlayer();
  drawCircle();
  print(playerX + "\n");
}
