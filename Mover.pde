class Mover {
  float x, y;
  int count;
  int lives;
  boolean finished=false;
  Mover(int count) {
    x=width/2+200;
    y=height/2;
    this.count=count;
    lives=3;
  }
  void show() {
    stroke(0);
    if(lives==3){
      fill(4, 121, 2);
    }
    else if(lives==2){
      fill(252, 252, 41);
    }
    else{
      fill(191, 13, 13);
    }
    strokeWeight(5);
    circle(x, y, 50);
    fill(0);
    textSize(25);
    text(count, x-10, y);
  }
  void act() {
    if(event.equals("x2 speed")){
      x=x+random(-20, 20);
      y=y+random(-20, 20);
    }
    else{
      x=x+random(-10, 10);
      y=y+random(-10, 10);
    }
    if(x<425+xChange/2 || x>1175-xChange/2 || y<25+xChange/2 || y>775-xChange/2){
      lives--;
      if(lives==0){
        finished=true;
        deathOrder.add(count);
      }
      else{
        x=width/2+200;
        y=height/2;
      }
      
    }
    if(dist(x, y, 500, 100)<=25){
      x=width/2+200;
      y=height/2;
      stroke(14, 201, 56);
      line(500, 100, x, y);
    }
    if(dist(x, y, 500, 700)<=25){
      x=width/2+200;
      y=height/2;
      stroke(14, 201, 56);
      line(500, 700, x, y);
    }
    if(dist(x, y, 1100, 700)<=25){
      x=width/2+200;
      y=height/2;
      stroke(14, 201, 56);
      line(1100, 700, x, y);
    }
    if(dist(x, y, 1100, 100)<=25){
      x=width/2+200;
      y=height/2;
      stroke(14, 201, 56);
      line(1100, 100, x, y);
    }
    if(event.equals("North Wind")){
      y-=0.5;
    }
    else if(event.equals("West Wind")){
      x-=0.5;
    }
    else if(event.equals("East Wind")){
      x+=0.5;
    }
    else if(event.equals("South Wind")){
      y+=0.5;
    }
  }
}
