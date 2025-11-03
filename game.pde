void game() {
  for(int i=0;i<501;i++){
    stroke(map(i, 0, 501, 0, 100), 0, 0);
    line(0, i*2, width, i*2);
  }
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
  textSize(40);
  text("Lives: "+player1.lives, 100, 120);
  text("Asteroids: "+asteroidsDestroyed, 160, 170);
  if(player1.teleportTimer<0)text("Teleport Ready", 210, 220);
  else text("Teleport Ready in: "+max(0,player1.teleportTimer/120+1), 260, 220);
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
    asteroidDelay/=1.02;
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
    int variantChance=4;
    if(hardMode)variantChance=3;
    int bulletSize;
    if(random(0,variantChance)<1){
      bulletSize=30;
    }
    else{
      bulletSize=10;
    }
    boolean splitsIntoTwo=false;
    if(random(0, variantChance)<1){
      splitsIntoTwo=true;
    }
    boolean machineGun=false;
    if(random(0, variantChance)<1){
      machineGun=true;
    }
    objects.add(new UFO(x, y, 3, bulletSize, splitsIntoTwo, machineGun));
    UFOTimer=0;
  }
  if(((!hardMode) && asteroidsDestroyed>=100) || asteroidsDestroyed>=150){
    mode=WIN;
  }
  player1.show();
  player1.act();
}
