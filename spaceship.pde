class Spaceship {
  PVector loc;
  PVector vel;
  PVector dir;
  Spaceship() {
    loc=new PVector(width/2, height/2);
    vel=new PVector(0, 0);
    dir=new PVector(1, 0);
  }
  void show() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading());
    drawShip();
    popMatrix();
  }
  void drawShip() {
    fill(0);
    stroke(255);
    strokeWeight(2);
    triangle(-10, -10, -10, 10, 30, 0);
    circle(15, 0, 5);
  }
  void act() {
    move();
    shoot();
    checkForCollisions();
  }
  void move() {
    loc.add(vel);
    if(upkey) vel.add(dir);
    if(leftkey) dir.rotate(-radians(3));
    if(rightkey) dir.rotate(radians(3));
    loc.x=(loc.x+width)%width;
    loc.y=(loc.y+height)%width;
  }
  void shoot() {
  }
  void checkForCollisions() {
  }
}
