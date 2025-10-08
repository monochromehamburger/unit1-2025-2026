class UFO extends GameObject {
  int alienShootTimer;
  UFO(){
    super(random(width), random(height), 1, 1);
    vel.setMag(random(1, 3));
    vel.rotate(random(TWO_PI));
    lives=3;
    d=lives*50;
  }
  UFO(float a, float b, int c){
    super(a, b, 1, 1);
    vel.setMag(random(1, 3));
    vel.rotate(random(TWO_PI));
    lives=c;
    d=lives*50;
  }
  void show(){
    fill(100, 200, 100);
    stroke(255);
    circle(loc.x, loc.y, d);
    line(loc.x, loc.y, loc.x+lives*50/2, loc.y);
  }
  void act(){
    loc.add(vel);
    wrapAround();
    checkForCollisions();
    alienShootTimer--;
    if(alienShootTimer<=0){
      shoot();
      alienShootTimer=60;
    }
    
  }
  void checkForCollisions(){
    int i=0;
    while(i<objects.size()){
      GameObject obj = objects.get(i);
      if(obj instanceof Bullet && obj.isEnemy==false){
        if(dist(loc.x, loc.y, obj.loc.x, obj.loc.y)<d/2+obj.d/2 && lives>0){
          obj.lives=0;
          if(lives!=1){
            objects.add(new UFO(loc.x, loc.y, lives-1));
          }
          lives=0;
        }
      }
      i++;
    }
  }
  void shoot(){
    Bullet temp=new Bullet(loc.x, loc.y, player1.loc);
    temp.isEnemy=true;
    objects.add(temp);
    
  }
} 
