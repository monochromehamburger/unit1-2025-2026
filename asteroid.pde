class Asteroid extends GameObject {
  float rotation;
  float randomRotation;
  float[] asteroidCircleX;
  float[] asteroidCircleY;
  float[] asteroidCircleSize;
  float[] colors;
  Asteroid(){
    super(random(width), random(height), 1, 1);
    vel.setMag(random(1, 3));
    vel.rotate(random(TWO_PI));
    lives=3;
    d=random(0.5,1.5)*lives*50;
    randomRotation=random(0.5, 1.5);
    rotation=0;
    asteroidCircleX=new float[5];
    asteroidCircleY=new float[5];
    asteroidCircleSize=new float[5];
    colors=new float[5];
    int numCraters=(int)random(4, 7);
    for(int i=0;i<numCraters;i++){
      fill(map(lives,1,3,0,50));
      asteroidCircleX[i]=random(-d/3,d/3);
      asteroidCircleY[i]=random(-d/3,d/3);
      asteroidCircleSize[i]=random(d/8,d/2);
      colors[i]=map(lives,1,3,0,50)*random(0.5,1.5);
      while(max(abs(asteroidCircleX[i]), abs(asteroidCircleY[i]))+asteroidCircleSize[i]<d/2.2){
        asteroidCircleSize[i]=random(d/8,d/2);
      }
    }
  }
  Asteroid(float a, float b, int c, float size){
    super(a, b, 1, 1);
    vel.setMag(random(1, 3));
    vel.rotate(random(TWO_PI));
    lives=c;
    d=size/2;
    randomRotation=random(0.5, 1.5);
    rotation=0;
    asteroidCircleX=new float[5];
    asteroidCircleY=new float[5];
    asteroidCircleSize=new float[5];
    colors=new float[5];
    for(int i=0;i<5;i++){
      fill(map(lives,1,3,0,50));
      asteroidCircleX[i]=random(-d/3,d/3);
      asteroidCircleY[i]=random(-d/3,d/3);
      asteroidCircleSize[i]=random(d/8,d/2);
      colors[i]=map(lives,1,3,0,50)*random(0.5,1.5);
      while(max(abs(asteroidCircleX[i]), abs(asteroidCircleY[i]))+asteroidCircleSize[i]<d/2.2){
        asteroidCircleSize[i]=random(d/8,d/2);
      }
    }
  }
  void show(){
    pushMatrix();
    translate(loc.x, loc.y);
    noStroke();
    rotate(radians(rotation));
    rotation+=randomRotation;
    fill(map(lives, 1, 3, 50, 150));
    circle(0, 0, d);
    noStroke();
    for(int i=0;i<5;i++){
      fill(colors[i]);
      circle(asteroidCircleX[i], asteroidCircleY[i], asteroidCircleSize[i]);
    }
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
          asteroidsDestroyed++;
          lives=0;
        }
      }
      i++;
    }
  }
} 
