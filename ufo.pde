class UFO extends GameObject {
  int alienShootTimer;
  int maxShootTimer;
  int bulletSize;
  boolean splitsIntoTwo;
  boolean machineGun;
  int timer;
  UFO() {
    super(random(width), random(height), 1, 1);
    vel.setMag(random(1, 3));
    vel.rotate(random(TWO_PI));
    lives=3;
    d=lives*50;
    isEnemy=true;
    maxShootTimer=100-lives*20;
  }
  UFO(float a, float b, int c, int bSize, boolean splits, boolean fastShoot) {
    super(a, b, 1, 1);
    if (bSize==10) {
      vel.setMag(random(1, 3));
    } else {
      vel.setMag(random(3, 5));
    }
    vel.rotate(random(TWO_PI));
    lives=c;
    d=lives*50;
    isEnemy=true;
    maxShootTimer=100-lives*20;
    bulletSize=bSize;
    splitsIntoTwo=splits;
    machineGun=fastShoot;
    if(fastShoot){
      maxShootTimer/=3;
    }
    timer=120;
  }

  void show() {
    timer--;
    stroke(255);
    if (splitsIntoTwo==false) {
      fill(100, 200, 100, 75);
      circle(loc.x, loc.y, d);
      fill(100, 200, 100);
      ellipse(loc.x, loc.y+d/2.5, d*1.5, d*3/10);
    } else {
      fill(67, 122, 232, 75);
      circle(loc.x, loc.y, d);
      fill(67, 122, 232);
      ellipse(loc.x, loc.y+d/2.5, d*1.5, d*3/10);
    }
    if (bulletSize==10) {
      fill(124, 176, 143);
      circle(loc.x, loc.y, d/2);
    } else {
      fill(245, 18, 10);
      circle(loc.x, loc.y, d/2);
    }
    fill(200);
    if(machineGun){
      noStroke();
      fill(0);
    }
    circle(loc.x-d/5, loc.y, d/6);
    circle(loc.x+d/5, loc.y, d/6);
    if(machineGun){
      fill(100, 100, 100);
      rect(loc.x-d/5, loc.y+d/2.5, d/5, d/3);
      rect(loc.x+d/5, loc.y+d/2.5, d/5, d/3);
    }
    //line(loc.x, loc.y, loc.x+lives*50/2, loc.y);
  }
  void act() {
    loc.add(vel);
    wrapAround();
    checkForCollisions();
    alienShootTimer--;
    if (alienShootTimer<=0) {
      shoot();
      alienShootTimer=maxShootTimer;
    }
  }
  void checkForCollisions() {
    int i=0;
    while (i<objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet && obj.isEnemy==false) {
        if (dist(loc.x, loc.y, obj.loc.x, obj.loc.y)<d/2+obj.d/2 && lives>0) {
          obj.lives--;
          asteroidsDestroyed++;
          if (lives!=1) {
            if (splitsIntoTwo) {
              objects.add(new UFO(loc.x, loc.y, lives-1, bulletSize, splitsIntoTwo, machineGun));
            }
            objects.add(new UFO(loc.x, loc.y, lives-1, bulletSize, splitsIntoTwo, machineGun));
          }
          lives=0;

          for (int j=0; j<30; j++) {
            objects.add(new Particle(loc.x, loc.y, 60, #34FA2B));
          }
        }
      }
      i++;
    }
  }
  void shoot() {
    Bullet temp=new Bullet(loc.x, loc.y, player1.loc, bulletSize);
    temp.isEnemy=true;
    objects.add(temp);
  }
  void wrapAround(){
    if(timer<0 && (loc.x<0 || loc.y<0 || loc.x>width && loc.y>height)){
      lives=0;
    }
    loc.x=(loc.x+width)%width;
    loc.y=(loc.y+height)%height;
  }
}
