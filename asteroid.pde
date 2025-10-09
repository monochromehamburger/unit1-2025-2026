class Asteroid extends GameObject {
  float rotation;
  float randomRotation;
  Asteroid(){
    super(random(width), random(height), 1, 1);
    vel.setMag(random(1, 3));
    vel.rotate(random(TWO_PI));
    lives=3;
    d=random(0.5,1.5)*lives*50;
    randomRotation=random(0.5, 1.5);
  }
  Asteroid(float a, float b, int c, float size){
    super(a, b, 1, 1);
    vel.setMag(random(1, 3));
    vel.rotate(random(TWO_PI));
    lives=c;
    d=size/2;
    randomRotation=random(0.5, 1.5);
  }
  void show(){
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(radians(rotation));
    rotation+=randomRotation;
    stroke(255);
    fill(map(lives, 1, 3, 0, 100));
    circle(0, 0, d);
    line(0, 0, d/2, 0);
    popMatrix();
  }
  void act(){
    loc.add(vel);
    wrapAround();
    checkForCollisions();
  }
  void checkForCollisions(){
    int i=0;
    while(i<objects.size()){
      GameObject obj = objects.get(i);
      if(obj instanceof Bullet && obj.isEnemy==false){
        if(dist(loc.x, loc.y, obj.loc.x, obj.loc.y)<d/2+obj.d/2 && lives>0){
          obj.lives=0;
          if(lives!=1){
            objects.add(new Asteroid(loc.x, loc.y, lives-1, d));
            objects.add(new Asteroid(loc.x, loc.y, lives-1, d));
          }
          lives=0;
        }
      }
      i++;
    }
  }
} 
