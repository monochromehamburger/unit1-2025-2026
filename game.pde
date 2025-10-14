void game() {
  background(0);
  player1.show();
  player1.act();
  int i=0;
  while (i<objects.size()) {
    GameObject currentObject=objects.get(i);
    currentObject.act();
    currentObject.show();
    if(currentObject.lives<=0){
      objects.remove(i);
    }
    else i++;
  }
  if(player1.lives<=0){
    mode=GAMEOVER;
  }
  fill(255, 0, 0);
  textSize(50);
  text("Lives: "+player1.lives, 100, 120);
  text("Time: "+timeSurvived/60, 100, 170);
  text("Asteroids: "+asteroidsDestroyed, 140, 220);
  timeSurvived++;
  asteroidTimer++;
  if(asteroidTimer>=asteroidDelay){
    int xOrY=(int)random(0,2);
    float x=0;
    float y=0;
    if(xOrY==0){
      if(random(0,2)<1){
        x=1500;
      }
      y=random(0, 1000);
    }  
    else{
      if(random(0,2)<1){
        y=1000;
      }
      x=random(0,1500);
    }
    objects.add(new Asteroid(x, y, 3, random(0.5,1.5)*3*50*2));
    asteroidTimer=0;
    asteroidDelay/=1.05;
    asteroidDelay=max(asteroidDelay, 60);
  }
  UFOTimer++;
  if(UFOTimer>=asteroidDelay*1.5){
    int xOrY=(int)random(0,2);
    float x=0;
    float y=0;
    if(xOrY==0){
      if(random(0,2)<1){
        x=1500;
      }
      y=random(0, 1000);
    }
    else{
      if(random(0,2)<1){
        y=1000;
      }
      x=random(0,1500);
    }
    objects.add(new UFO(x, y, 3));
    UFOTimer=0;
  }
}
