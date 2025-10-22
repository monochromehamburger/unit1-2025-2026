class Bullet extends GameObject{
  int timer;
  Bullet() {
    super(player1.loc.copy(), player1.dir.copy(), 1);
    vel.setMag(10);
    timer=120;
    d=10;
  }
  Bullet(float x, float y, PVector target) {
    super(new PVector(x, y), new PVector(target.x - x, target.y-y), 1);
    vel.setMag(10);
    timer=120;
    d=10;
  }

  Bullet(float x, float y, PVector target, int size) {
    super(new PVector(x, y), new PVector(target.x - x, target.y-y), 1);
    vel.setMag(10);
    timer=120;
    d=size;
  }
  void show() {
    fill(255);
    if(isEnemy==true){
      stroke(255, 0, 0);
    }
    else{
      stroke(255);
    }
    strokeWeight(2);
    fill(19, 59, 100);
    circle(loc.x, loc.y, d);
    wrapAround();
  }

  void act() {
    loc.add(vel);
    timer--;
    if(timer==0) lives=0; 
  }
}
