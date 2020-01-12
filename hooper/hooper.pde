//variable declaration
int playerX = 159;
int playerY = 154;

int ballX = 295;
int ballY = 165;

int hoopX = 536;
int hoopY = 168;

int velocity = 5;

char gameState = '0';

boolean player1HasBall = false;

PImage courtImg, whiteCourt, viceCourt, ball, menuPic, gameSelectPage, settings, controls, pause, visualsbg;




//functions
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

//loops
void setup() {
  size(612, 355);
  courtImg = loadImage("basketball-court-clipart.jpg");
  ball = loadImage("ball.png");
  menuPic = loadImage("test.png");
  gameSelectPage = loadImage("gameSelectPage.jpg");
  settings = loadImage("settingsbg.png");
  controls = loadImage("controlsbg.png");
  whiteCourt = loadImage("whiteCourt.png");
  viceCourt = loadImage("viceCourt.png");
  pause = loadImage("pausebg.png");
  visualsbg = loadImage("visualsbg.png");
  getSavedInfo();
  //spawns the player into the saved X and Y
  playerX = parseInt(playerData[0]);
  playerY = parseInt(playerData[1]);
  
}

void draw() {
  if(gameState == '0'){
    MainMenuPage();
  }else if(gameState == '1'){
    GameSelectPage();
  }else if(gameState == '2'){
    GamePage1();
  }else if(gameState == '3'){
    GamePage2();
  }else if(gameState == '4'){
    GamePage3();
  }else if(gameState == '5'){
    PausePage();
  }else if(gameState == '6'){
    SettingsPage();
  }else if(gameState == '7'){
    VisualsPage();
  }else if(gameState == '8'){
    ControlsPage();
  }
}

boolean wait(int waitTime) {
  boolean getTime = true;
  int oldTime = 0;
  
  if ( getTime ) {
    oldTime = millis();
    getTime = false;
  }
  
  while ( millis() < oldTime + waitTime ) {
  }
  return true;
}
