class Button{
  int X;
  int Y;
  int W;
  int H;
  int Radius;
  String Text;
  int[] Stroke1;
  int[] Stroke2;
  int[] Background1;
  int[] Background2;
  
  Button(int x, int y, int w, int h, int radius, String text, int[] stroke1, int[] stroke2, int[]background1, int[]background2){
    X = x;
    Y = y;
    W = w;
    H = h;
    Radius = radius;
    Text = text;
    Stroke1 = stroke1;
    Stroke2 = stroke2;
    Background1 = background1;
    Background2 = background2;
    
  }
  
  void Render() {
    fill(Background1[0], Background1[1], Background1[2]);
    stroke(Stroke1[0], Stroke1[1], Stroke1[2]);
    if (Event()) {
      stroke(Stroke2[0], Stroke2[1], Stroke2[2]);
      fill(Background2[0], Background2[1], Background2[2]);
    }
    strokeWeight(3);
    rect(X,Y,W,H, Radius);
    fill(0,0,0);
    textSize(25);
    textAlign(CENTER, CENTER);
    text(Text, X, Y, W, H);
  }
  
  boolean Event() {
    if(buttonCollision(X,Y,W,H)) {
      return true;
    }else{
      return false;
    }
  }


}
int[] blue = {57, 130, 193};
int[] black = {0,0,0};
int[] white = {255,255,255};
int[] grey = {196, 190, 190};
int[] red = {227, 12, 5};

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
