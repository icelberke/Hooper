//variable declaration
int playerX = 159;
int playerY = 154;

int ballX = 295;
int ballY = 165;

int hoopX = 536;
int hoopY = 168;

int velocity = 5;

boolean player1HasBall = false;

PImage courtImg, ball;

//functions
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
void createPlayer() {
  rect(playerX, playerY, 50, 50);
}

void drawBall() {
  image(ball, ballX, ballY, 25, 25);
}

void rebound() {
  if (ballX - playerX <= 50 && ballY - playerY <= 50){
    player1HasBall = true;
    
  }
}

int shotTakenSpot() {
  if (playerX <= 306) {
    //halfcourt
    return 1;
  }else if(playerX + 50 >= 410 && playerY + 50 > 50 && playerY <= 302) {
    return 2;
    //2pointer
  }else{
    return 3;
    //3pointer
  }
}

boolean shotSuccessCalculator() {
  shotBar();
  int percantage = 95;
  if(shotTakenSpot() == 1) {
    percantage -= 75;
  }else if(shotTakenSpot() == 2) {
    percantage -= 10;
  }else if(shotTakenSpot() == 3) {
    percantage -= 30;
  }
  percantage -= meterPercantage;
  if (percantage >= (int)random(0,101)){
    return true;
  }else{
    return false;
  }
}

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
  drawBall();
  shotBar();
  keyReleased = 'n';
  //print(mouseX + " " + mouseY + "\n");
  //print(shotTakenSpot() + "\n");
}
