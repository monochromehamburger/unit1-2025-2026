class Bullet extends GameObject{
  int timer;
  Bullet() {
    super(player1.loc.copy(), player1.dir.copy(), 1);
    vel.setMag(10);
    timer=120;
    d=10;
  }

  void show() {
    fill(255);
    stroke(255);
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
