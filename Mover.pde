class Mover {
  float x, y;
  int count;
  float size;
  
  boolean finished=false;
  Mover(int count) {
    x=width/2;
    y=height/2;
    this.count=count;
    size=random(50, 150);
  }
  void show() {
    stroke(0);
    fill(255);
    strokeWeight(5);
    circle(x, y, size);
  }
  void act() {
    x=x+random(-10, 10);
    y=y+random(-10, 10);
  }
}
