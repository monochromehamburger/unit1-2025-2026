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
    if(x<225+xChange/2 || x>975-xChange/2 || y<25+xChange/2 || y>775-xChange/2){
      finished=true;
      deathOrder.add(count);
    }
    if(dist(x, y, 300, 100)<=25){
      x=width/2+100;
      y=height/2;
      stroke(14, 201, 56);
      line(300, 100, width/2+100, height/2);
    }
    if(dist(x, y, 300, 700)<=25){
      x=width/2+100;
      y=height/2;
      stroke(14, 201, 56);
      line(300, 700, width/2+100, height/2);
    }
    if(dist(x, y, 900, 700)<=25){
      x=width/2+100;
      y=height/2;
      stroke(14, 201, 56);
      line(900, 700, width/2+100, height/2);
    }
    if(dist(x, y, 900, 100)<=25){
      x=width/2+100;
      y=height/2;
      stroke(14, 201, 56);
      line(900, 100, width/2+100, height/2);
    }
  }
}
