class Bullet extends GameObject{
  int timer;
  color col;
  color outline;
  boolean doesntWrap;
  Bullet(int speed) {
    super(player1.loc.copy(), player1.dir.copy(), 1);
    vel.setMag(speed);
    timer=120;
    d=10;
    col=#133B64;
    outline=#FFFFFF;
  }
  Bullet(int speed, int time, float size) {
    super(player1.loc.copy(), player1.dir.copy(), 1);
    vel.setMag(speed);
    timer=time;
    d=size;
    col=#520A52;
    outline=#52F01F;
  }
  Bullet(int speed, int time, float size, boolean wrapAround) {
    super(player1.loc.copy(), player1.dir.copy(), 3);
    vel.setMag(speed);
    timer=time;
    d=size;
    col=#520A52;
    outline=#52F01F;
    doesntWrap=wrapAround;
  }
  Bullet(int speed, PVector direction) {
    super(player1.loc.copy(), direction, 1);
    vel.setMag(speed);
    timer=120;
    d=10;
    col=#133B64;
    outline=#FFFFFF;
  }
  Bullet(float x, float y, PVector target) {
    super(new PVector(x, y), new PVector(target.x - x, target.y-y), 1);
    vel.setMag(10);
    timer=120;
    d=10;
    col=#133B64;
    outline=#FFFFFF;
  }

  Bullet(float x, float y, PVector target, int size) {
    super(new PVector(x, y), new PVector(target.x - x, target.y-y), 1);
    vel.setMag(10);
    timer=120;
    d=size;
    col=#133B64;
    outline=#FFFFFF;
  }
  void show() {
    if(isEnemy==true){
      stroke(255, 0, 0);
    }
    else{
      stroke(outline);
    }
    strokeWeight(2);
    fill(col);
    circle(loc.x, loc.y, d);
    wrapAround();
  }

  void wrapAround(){
    if(doesntWrap==true && (loc.x<0 || loc.y<0 || loc.x>width && loc.y>height)){
      lives=0;
    }
    loc.x=(loc.x+width)%width;
    loc.y=(loc.y+height)%height;
  }
  void act() {
    loc.add(vel);
    timer--;
    if(timer==0) lives=0; 
  }
}
