class Spaceship extends GameObject{
  PVector dir;
  int cooldown;
  Spaceship() {
    super(width/2, height/2, 0, 0);
    dir=new PVector(0.1, 0);
    cooldown=0;
    lives=5;
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
    //Colors sponsored by Calvin
    stroke(16,67,141);
    fill(21, 41, 67);
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
    //println(dir+" "+vel+" "+loc);
   
    if (upkey){
      vel.add(dir.x*3, dir.y*3);
      
    }
    if (leftkey){
      dir.rotate(-radians(3));
    }
    if (rightkey) dir.rotate(radians(3));
    vel.setMag(vel.mag()*0.995);
    wrapAround();
  }
  void shoot() {
    cooldown--;
    if (spacekey && cooldown <=0) {
      objects.add(new Bullet());
      cooldown=20;
    }
    
  }
  void checkForCollisions() {
    int i=0;
    while(i<objects.size()){
      GameObject obj = objects.get(i);
      if(obj instanceof Asteroid){
        if(dist(loc.x, loc.y, obj.loc.x, obj.loc.y)<5+obj.d/2){
          lives-=obj.lives;
          obj.lives=0;
        }
      }
      i++;
    }
  }
}
