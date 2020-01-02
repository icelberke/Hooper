char prevState = '0';
//Game State 0
Button Back = new Button(10,10,70,50,20, "Back", black, blue, white, grey);
Button Pause = new Button(10,10,70,50,20, "Pause", black, blue, white, grey);
Button Play = new Button(25, 130, 200, 50, 40, "Play", black, blue, white, grey);
Button Settings = new Button(25, 210, 200, 50, 40, "Settings", black, blue, white, grey);
Button Quit = new Button(25, 290, 200, 50, 40, "Quit", black, blue, white, grey);
void gameState0() {
  background(menuPic);

  Play.Render();
  if(Play.Event() && mousePressed){
    wait(100);
    gameState = '1';
  }
  
  Settings.X = 25;
  Settings.Render();
  if(Settings.Event() && mousePressed) {
    wait(100);
    gameState = '6';
  }
  
  Quit.Render();
  if(Quit.Event() && mousePressed) {
    wait(100);
    exit();
  }
}

Button Game1 = new Button(156, 50, 300, 65, 0, "Game 1", black, blue, white, grey);
Button Game2 = new Button(156, 150, 300, 65, 0, "Game 2", black, blue, white, grey);
Button Game3 = new Button(156, 250, 300, 65, 0, "Game 3", black, blue, white, grey);

//gameState 1
void gameState1(){
  background(gameSelectPage);
  Game1.Render();
  if(Game1.Event() && mousePressed){
    wait(100);
    gameState = '2';
  }
  Game2.Render();
  if(Game2.Event() && mousePressed){
    wait(100);
    gameState = '3';
  }
  Game3.Render();
  if(Game3.Event() && mousePressed){
    wait(100);
    gameState = '4';
  }
  Back.Render();
  
  if(Back.Event() && mousePressed){
    wait(100);
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
  Pause.Render();
  
  if(Pause.Event() && mousePressed){
    wait(100);
    gameState = '5';
  }
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
  Pause.Render();
  
  if(Pause.Event() && mousePressed){
    wait(100);
    gameState = '5';
  }
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
  Pause.Render();
  
  if(Pause.Event() && mousePressed){
    wait(100);
    gameState = '5';
  }
}

Button Home = new Button(206, 130, 200, 50, 40, "Home", black, blue, white, grey);
//Pause page
void gameState5(){
  background(0,0,0);
  Home.Render();
  if(Home.Event() && mousePressed){
    wait(100);
    gameState = '0';
  }
  Settings.X = 206;
  Settings.Render();
  if(Settings.Event() && mousePressed){
    wait(100);
    gameState = '6';
  }
  Back.Render();
  
  if(Back.Event() && mousePressed){
    wait(100);
    gameState = prevState;
  }
  

}
//Declare global slide values
int soundSliderValue = 128;
int playerSpeedSliderValue = 306;
int playerAccuracySliderValue = 484;

Button visualsButton = new Button(206,160,200,50,20, "Visuals", black, blue, white, grey);
Button controlsButton = new Button(206,260,200,50,20, "Controls", black, blue, white, grey);


//SETTINGS BAYBEEE
void gameState6(){
  background(settings);
  soundSliderValue = createSlider(78, 100, 100, 30, soundSliderValue);
  playerSpeedSliderValue = createSlider(256, 100, 100, 30, playerSpeedSliderValue);
  playerAccuracySliderValue = createSlider(434, 100, 100, 30, playerAccuracySliderValue);  

  Back.Render();
  visualsButton.Render();
  controlsButton.Render();
  
  if(Back.Event() && mousePressed){
    wait(100);
    gameState = '0';
  }
  
  if(visualsButton.Event() && mousePressed){
    wait(100);
    gameState = '7';
  }
  
  if(controlsButton.Event() && mousePressed){
    wait(100);
    gameState = '8';
  }
  
}

void gameState7() {
  background(0,0,0);
  
  Back.Render();
  
  if(Back.Event() && mousePressed){
    wait(100);
    gameState = '6';
  }
}
void gameState8() {
  background(controls);
  
  Back.Render();
  
  if(Back.Event() && mousePressed){
    wait(100);
    gameState = '6';
  }
}
