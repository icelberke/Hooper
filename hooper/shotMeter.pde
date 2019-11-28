char keyReleased = 'n';
float shotMeter = 0;
int meterPercantage = 0;

void keyReleased() {
  if (key == 'x') {
    keyReleased = key;
  }else{
    keyReleased = 'n';
  }
}

void shotBar() {
  meterPercantage = 0;
    if (keyPressed == true && key =='x' && keyReleased != 'x') {
    fill(255,255,255);
    rect(playerX - 30,playerY,20,70);
    if ( shotMeter + 70 > 0){
      shotMeter += -3;
    }
    fill(209, 6, 6);
    rect(playerX - 30, playerY, 20,70 +shotMeter);
  }else if ( keyReleased == 'x') {    
    //bar percantage returner
    if (55 <= shotMeter * -1 && shotMeter * -1 >= 65) {
      meterPercantage = +50;
    }else if (shotMeter * -1 >= 65) {
      meterPercantage = -30;
    }else if (shotMeter * -1 < 25) {
      meterPercantage = -50;
    }else{
      meterPercantage = -20;
    } 
    print(shotMeter + "\n");
    shotMeter = 0;
  }
}
