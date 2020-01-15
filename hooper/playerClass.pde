class Player{
  int x;
  int y;
  char leftKey;
  char rightKey;
  char downKey;
  char upKey;
  char shootKey;
  int velocity;
  int score = 0;
  int hoopX;
  int hoopY;
  boolean hasBall=false;
  
  Player(int x, int y, char leftKey, char rightKey, char downKey, char upKey, char shootKey, int velocity, int hoopX, int hoopY){
    this.x = x;
    this.y = y;
    this.leftKey = leftKey;
    this.rightKey = rightKey;
    this.downKey = downKey;
    this.upKey = upKey;
    this.shootKey = shootKey;
    this.velocity = velocity;
    this.hoopX = hoopX;
    this.hoopY = hoopY;
  }
  void render(){
    getBall();
    move();
  }
  
  int playerScoreGetter(){
    return this.score;
  }
  
  void getBall(){
    if(x + 55 > ballX && x + 35 < ballX + 45 && y + 88 > ballY && y+28 < ballY + 65){
      hasBall = true;
    }else{
      hasBall = false;
    }
  }
  
  void move(){
      if(keyPressed && key == leftKey && x - velocity > 0){
        this.x -= this.velocity;
        if(hasBall){
        ballX-=this.velocity;
      }
        image(playerRightImg, this.x, this.y, 55, 95);
      }else if(keyPressed && key == rightKey && x + velocity + 50 < 612){
        this.x += this.velocity;
        if(hasBall){
        ballX+=this.velocity;
      }
        image(playerRightImg, this.x, this.y, 55, 95);
      }else if(keyPressed &&key == downKey && y + velocity + 50 < 355){
        this.y += this.velocity;
        if(hasBall){
        ballY+=this.velocity;
      }
        image(playerRightImg, this.x, this.y, 55, 95);
        
      }else if(keyPressed && key == upKey && y - velocity > 0){
        this.y -= this.velocity;
        if(hasBall){
        ballY-=this.velocity;
      }
        image(playerRightImg, this.x - 50, this.y, 55, 95);
      }else if(keyPressed && key == this.shootKey){
        if(70 >= (int) random(0,101)){
          hasBall = false;
          shoot(this.x, this.y, this.hoopX, this.hoopY);
          image(playerRightImg, this.x - 50, this.y, 55, 95);
        }
      }else{
        image(playerRightImg, this.x, this.y, 55, 95);
      }
      
    }
}
