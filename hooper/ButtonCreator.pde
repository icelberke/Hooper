//Creates a button in the specified cordinates, returns true if pressed
boolean createButton(
      int buttonX, int buttonY,
      int buttonW, int buttonH,
      String buttonText, int cornerRadius,
      boolean nofill, int textSize
      
){
  
  
  fill(255,255,255);
  stroke(105, 115, 124);
  textSize(textSize);

  if(buttonCollision(buttonX, buttonY, buttonW, buttonH) && mousePressed){
    return true;
    
  }else if(buttonCollision(buttonX, buttonY, buttonW, buttonH)) {
    //fill(57, 130, 193);
    stroke(57, 130, 193);
    
  }
  strokeWeight(3);
  if (nofill == true) {
    noFill();
  }
  rect(buttonX, buttonY, buttonW, buttonH, cornerRadius);
  fill(0,150,0);
  text(buttonText, (buttonX + (buttonW / 2)) - (buttonText.length() * 7) - 5, buttonY + (buttonH / 2) + 10);
 
  
  
  return false;
}

boolean backButton() {
  if(createButton(10,10, 70, 50, "Back", 20, true, 30)){
    return true;
  }else{
    return false;
  }
}

void pauseButton(){
  if(createButton(10,10, 70, 50, "Pause", 20, true, 30)) {
    prevState = gameState;
    gameState = '5';
  }
}

int createSlider(int sliderX, int sliderY, int sliderW, int sliderH, int sliderValue) {
  fill(0,0,0);
  strokeWeight(3);
  stroke(0,100,0);
  rect(sliderX, sliderY, sliderW, sliderH);
  fill(200, 0, 0);
  noStroke();
  rect(sliderX, sliderY, sliderValue - sliderX, sliderH);
  if( buttonCollision(sliderX, sliderY, sliderW, sliderY) && mousePressed ) {
    sliderValue =  mouseX;
  }
  
  return sliderValue;
}

//Checks if the mouse is on the specified cordinates 
boolean buttonCollision(int buttonX, int buttonY, int buttonW, int buttonH) {

  if (
      buttonX <= mouseX &&
      mouseX <= buttonX + buttonW &&
      buttonY <= mouseY &&
      mouseY <= buttonY + buttonH)
      
      {
        return true;
      }else {
        return false;    
      }
}
