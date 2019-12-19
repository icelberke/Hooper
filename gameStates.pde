char prevState = '0';
//Game State 0
void gameState0() {
  background(0,0,0);
      
  if(createButton(25, 130,200,50, "Play", 40, false, 30)){
        gameState = '1';
  }
  if(createButton(25, 210,200,50, "Settings", 40, false, 30)) {
    gameState = '6';
  }
    
  if(createButton(25, 290,200,50, "Quit", 40, false, 30)) {
    exit();
  }
}

//gameState 1
void gameState1(){
  background(0,0,0);
  if(createButton(156, 50,300,65, "Game 1", 0, true, 30)){
    gameState = '2';
  }
  if(createButton(156, 150,300,65, "Game 2", 0, true, 30)){
    gameState = '3';
  }
  if(createButton(156, 250,300,65, "Game 3", 0, true, 30)){
    gameState = '4';
  }
  if(backButton()){
    gameState = '0';
  }
}

//gameState 3
void gameState3(){
  background(courtImg);
  rebound();
  createPlayer();
  drawBall();
  shotBar();
  keyReleased = 'n';
  setSavedInfo();
  pauseButton();
}
//gameState 2
void gameState2(){
  background(courtImg);
  rebound();
  createPlayer();
  drawBall();
  shotBar();
  keyReleased = 'n';
  setSavedInfo();
  pauseButton();
}
//gameState 4
void gameState4(){
  background(courtImg);
  rebound();
  createPlayer();
  drawBall();
  shotBar();
  keyReleased = 'n';
  setSavedInfo();
  pauseButton();
}

//Pause page
void gameState5(){
  background(0,0,0);
  if(createButton(206, 100, 200, 50, "Home", 20, false, 30)){
    gameState = '0';
  }
  if(createButton(206, 180, 200, 50, "Settings", 20, false, 30)){
    gameState = '6';
  }
  
  if(backButton()){
    gameState = prevState;
  }
}
//Declare global slide values
int soundSliderValue = 128;
int playerSpeedSliderValue = 306;
int playerAccuracySliderValue = 484;
//SETTINGS BAYBEEE
void gameState6(){
  background(0,0,0);
  fill(255,0,0);
  textSize(60);
  text("SETTINGS",160,60);
  soundSliderValue = createSlider(78, 100, 100, 30, soundSliderValue);
  playerSpeedSliderValue = createSlider(256, 100, 100, 30, playerSpeedSliderValue);
  playerAccuracySliderValue = createSlider(434, 100, 100, 30, playerAccuracySliderValue);  
  if(backButton()){
    gameState = '0';
  }
  

}
