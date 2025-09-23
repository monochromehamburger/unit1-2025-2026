class Mover {
  float x, y;
  int count;
  int r;
  int g;
  int b;
  
  boolean finished=false;
  Mover(int count) {
    x=width/2;
    y=height/2;
    this.count=count;
    r=(int) random(0, 256);
    g=(int) random(0, 256);
    b=(int) random(0, 256);
  }
  void show() {
    stroke(0);
    fill(r, g, b);
    strokeWeight(5);
    circle(x, y, 50);
  }
  void act() {
    x=x+random(-10, 10);
    y=y+random(-10, 10);
  }
}
