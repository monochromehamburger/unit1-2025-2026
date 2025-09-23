class Mover {
  float x, y;
  int count;
  boolean finished=false;
  Mover(int count) {
    x=width/2+100;
    y=height/2;
    this.count=count;
  }
  void show() {
    stroke(0);
    fill(255);
    strokeWeight(5);
    circle(x, y, 50);
    fill(0);
    textSize(25);
    text(count, x-10, y);
  }
  void act() {
    x=x+random(-10, 10);
    y=y+random(-10, 10);
    if(x<225 || x>975 || y<25 || y>775){
      finished=true;
      deathOrder.add(count);
    }
  }
}
