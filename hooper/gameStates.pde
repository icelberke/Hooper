char prevState = '0';
boolean isRedCourt = true;
boolean isViceCourt = false;
boolean isWhiteCourt = false;
//Game State 0
Button Back = new Button(10,10,70,50,20, "Back", black, red, white, grey);
Button Pause = new Button(10,10,90,50,20, "Pause", black, blue, white, grey);
Button Play = new Button(25, 130, 200, 50, 40, "Play", black, blue, white, grey);
Button Settings = new Button(25, 210, 200, 50, 40, "Settings", black, blue, white, grey);
Button Quit = new Button(25, 290, 200, 50, 40, "Quit", black, blue, white, grey);
void MainMenuPage() {
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
    prevState = '0';
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
void GameSelectPage(){
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

Player player1 = new Player(100, 100, 'a', 'd', 's', 'w','x', 2, 500, 300);
Player player2 = new Player(00, 100, 'j', 'l', 'k', 'i','m', 2, 500, 300);
//gameState 3
void GamePage1(){
  if(isRedCourt){
    background(courtImg);
  }else if(isViceCourt){
    background(viceCourt);
  }else if(isWhiteCourt){
    background(whiteCourt);
  }
  image(scoreboard, 0, 315, 612, 40);
  fill(255,255,255);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("100", 148, 320, 55, 25);
  text("112", 350, 320, 55, 25);
  drawBall();
  setSavedInfo();
  Pause.Render();
  player1.render();
  player2.render();
  
  if(Pause.Event() && mousePressed){
    wait(100);
    prevState = '2';
    gameState = '5';
  }
}
//gameState 2
void GamePage2(){
  background(viceCourt);
  drawBall();
  setSavedInfo();
  Pause.Render();
  
  if(Pause.Event() && mousePressed){
    wait(100);
    prevState = '3';
    gameState = '5';
  }
}
//gameState 4
void GamePage3(){
  background(whiteCourt);
  drawBall();
  setSavedInfo();
  Pause.Render();
  
  if(Pause.Event() && mousePressed){
    wait(100);
    prevState = '4';
    gameState = '5';
  }
}

Button Home = new Button(206, 130, 200, 50, 40, "Home", black, blue, white, grey);
//Pause page
void PausePage(){
  background(pause);
  Home.Render();
  if(Home.Event() && mousePressed){
    wait(100);
    gameState = '0';
  }
  Settings.X = 206;
  Settings.Render();
  if(Settings.Event() && mousePressed){
    wait(100);
    prevState = '5';
    gameState = '6';
  }
  Back.Render();
  
  if(Back.Event() && mousePressed){
    wait(100);
    gameState = prevState;
  }
  

}

Button visualsButton = new Button(206,160,200,50,20, "Visuals", black, blue, white, grey);
Button controlsButton = new Button(206,260,200,50,20, "Controls", black, blue, white, grey);
Slider VolumeSlider = new Slider(78, 100, 100, 30, "Volume");
Slider playerSpeedSlider = new Slider(256, 100, 100, 30, "Speed");
Slider playerAccuracySlider = new Slider(434, 100, 100, 30, "Accuracy");



//SETTINGS BAYBEEE
void SettingsPage(){
  background(settings);
  VolumeSlider.Render();
  playerSpeedSlider.Render();
  playerAccuracySlider.Render();  

  Back.Render();
  visualsButton.Render();
  controlsButton.Render();
  
  if(Back.Event() && mousePressed){
    wait(100);
    gameState = prevState;
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

Button gameBG1 = new Button(10, 80, 180, 100, 0, "1", black, blue, white, grey);
Button gameBG2 = new Button(216, 80, 180, 100, 0, "1", black, blue, white, grey);
Button gameBG3 = new Button(422, 80, 180, 100, 0, "1", black, blue, white, grey);


void VisualsPage() {
  background(visualsbg);
  
  Back.Render();
  gameBG1.Render();
  if(Back.Event() && mousePressed){
    wait(100);
    isRedCourt = true;
    isViceCourt = false;
    isWhiteCourt = false;
  }
  gameBG2.Render();
  if(Back.Event() && mousePressed){
    wait(100);
    isRedCourt = false;
    isViceCourt = true;
    isWhiteCourt = false;
  }
  gameBG3.Render();
  if(Back.Event() && mousePressed){
    wait(100);
    isRedCourt = false;
    isViceCourt = false;
    isWhiteCourt = true;
  }
  image(courtImg, 10, 80, 180, 100);
  image(viceCourt, 216, 80, 180, 100);
  image(whiteCourt, 422, 80, 180, 100);
  
  if(Back.Event() && mousePressed){
    wait(100);
    gameState = '6';
  }
}
void ControlsPage() {
  background(controls);
  
  Back.Render();
  
  if(Back.Event() && mousePressed){
    wait(100);
    gameState = '6';
  }
}
