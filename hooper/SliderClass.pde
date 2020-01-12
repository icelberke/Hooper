class Slider{
  int x;
  int y;
  int w;
  int h;
  String text;
  int sliderValue;
  
  Slider(int x, int y, int w, int h, String text){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text = text;
    this.sliderValue = this.w+50;
  }
  
  void Render(){
    fill(#7D8081);
    stroke(#05CEE3);
    rect(x,y,w,h);
    fill(#5486B9);
    noStroke();
    rect(x+2,y+2,sliderValue-50,h-3);
    textSize(20);
    fill(#05CEE3);
    textAlign(CENTER, CENTER);
    text(this.text, x,y-4,w,h);
    if(mousePressed && buttonCollision(x,y,w,h)){
      sliderValue = mouseX-30;
    }
  }
  
  int value(){
    return ((this.sliderValue + 50) - w);
  }

}
