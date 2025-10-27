class Spaceship extends GameObject{
  PVector dir;
  int cooldown;
  int invincibilityTimer=0;
  int teleportTimer;
  int weaponNumber;
  Spaceship() {
    super(width/2, height/2, 0, 0);
    dir=new PVector(0.1, 0);
    cooldown=0;
    lives=5;
    weaponNumber=1;
  }
  void show() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading());
    drawShip();
    popMatrix();
  }
  void drawShip() {
    stroke(255);
    strokeWeight(2);
    //Colors sponsored by Calvin
    stroke(16,67,141);
    if(invincibilityTimer>0){
      fill(219, 214, 51, map(invincibilityTimer, 0, 120, 0, 255));
      circle(10, 0, map(invincibilityTimer, 0, 120, 0, 100));
    }
    if(weaponNumber==1)fill(21, 41, 67);
    else if(weaponNumber==2)fill(12, 87, 212);
    else if(weaponNumber==3)fill(111, 87, 10);
    triangle(-10, -10, -10, 10, 30, 0);
    circle(15, 0, 5);
    objects.add(new Particle(new PVector(loc.x, loc.y), 30, #2E40A2, new PVector(vel.x*-1, vel.y*-1)));
  }
  void act() {
    move();
    shoot();
    if(invincibilityTimer<=0){
      checkForCollisions();
    }
    invincibilityTimer--;
    teleportTimer--;
  }
  void move() {
    loc.add(vel);
    //println(dir+" "+vel+" "+loc);
   
    if (upkey){
      vel.add(dir.x, dir.y);
      
    }
    if (leftkey){
      dir.rotate(-radians(3));
    }
    if (rightkey) dir.rotate(radians(3));
    if(weaponNumber==2){
      vel.setMag(vel.mag()*0.95);
    }
    else if(weaponNumber==3){
      vel.setMag(0);
    }
    else{
      vel.setMag(vel.mag()*0.99);
    }
    wrapAround();
  }
  void shoot() {
    cooldown--;
    if(weaponNumber==1){
      if (spacekey && cooldown <=0) {
        objects.add(new Bullet(10));
        cooldown=20;
      }
    }
    else if(weaponNumber==2){
      if (spacekey && cooldown <=0) {
        objects.add(new Bullet(5));
        cooldown=10;
      }
    }
    else if(weaponNumber==3){
      if (spacekey && cooldown <=0) {
        objects.add(new Bullet(10));
        objects.add(new Bullet(10, dir.copy().rotate(-1)));
        objects.add(new Bullet(10, dir.copy().rotate(1)));
        objects.add(new Bullet(10, dir.copy().rotate(-0.5)));
        objects.add(new Bullet(10, dir.copy().rotate(0.5)));
        cooldown=20;
      }
    }
  }
  void checkForCollisions() {
    int i=0;
    while(i<objects.size()){
      GameObject obj = objects.get(i);
      if(obj instanceof Asteroid || obj.isEnemy==true){
        if(dist(loc.x, loc.y, obj.loc.x, obj.loc.y)<5+obj.d/2){
          lives-=obj.lives;
          obj.lives=0;
          invincibilityTimer=120;
        }
      }
      i++;
    }
  }
  void teleport(){
    int i=0;
    PVector old=new PVector(loc.x, loc.y);
    float x=random(-300,300);
    float y=random(-300,300);
    loc.add(x, y);
    boolean found=true;
    int loopedTimes=0;
    while(found==true && loopedTimes<100){
      found=false;
      while(i<objects.size()){
        GameObject obj = objects.get(i);
        if(obj instanceof Asteroid || obj.isEnemy==true){
          if(dist(loc.x, loc.y, obj.loc.x, obj.loc.y)<10+obj.d/2){
            x=random(-300,300);
            y=random(-300,300);
            loc.add(x, y);
            found=true;
            break;
          }
        }
        i++;
      }
      loopedTimes++;
    }
    stroke(222, 255, 39);
    strokeWeight(20);
    line(old.x, old.y, loc.x, loc.y);
    teleportTimer=600;
  }
}
