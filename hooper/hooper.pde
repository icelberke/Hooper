int playerX = 0;
int playerY = 0;
int ballX = 295;
int ballY = 165;

int hoopX = 536;
int hoopY = 168;
char gameState = '0';

PImage courtImg, whiteCourt, viceCourt, ball, menuPic, gameSelectPage, settings, controls, pause, visualsbg, playerLeftImg, playerRightImg, scoreboard;


void drawBall() {
  image(ball, ballX, ballY, 25, 25);
}

//loops
void setup() {
  size(612, 355);
  courtImg = loadImage("./pictures/basketball-court-clipart.jpg");
  ball = loadImage("./pictures/ball.png");
  menuPic = loadImage("./pictures/test.png");
  gameSelectPage = loadImage("./pictures/gameSelectPage.jpg");
  settings = loadImage("./pictures/settingsbg.png");
  controls = loadImage("./pictures/controlsbg.png");
  whiteCourt = loadImage("./pictures/whiteCourt.png");
  viceCourt = loadImage("./pictures/viceCourt.png");
  pause = loadImage("./pictures/pausebg.png");
  visualsbg = loadImage("./pictures/visualsbg.png");
  playerLeftImg = loadImage("./pictures/player1sprite.png");
  playerRightImg = loadImage("./pictures/player2sprite.png");
  scoreboard = loadImage("./pictures/scoreboardpic.png");
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
