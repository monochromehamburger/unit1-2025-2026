void intro(){
  noStroke();  
  fill(100, map(size, 0, 800, 0, 255), 200);
  rect(x3, y3, size, 10);
  rect(y3, x3, 10, size);
  rect(x3, 790-y3, size, 10);
  rect(790-y3, x3, 10, size);
  y3-=1.25;
  x3=remove*remove;
  size=800-remove*remove*2;
  if(size<=0 || size>=800){
    goingUp2=!goingUp2;
  }
  if(goingUp2){
    remove+=0.03;
  }
  else{
    remove-=0.03;
  }
  fill(200, 100, 30);
  //rect(200, 300, 400, 200);
  fill(0);
  textSize(100);
  textAlign(CENTER);
  text("Color Game", 400, 350);
  text("Press A to start  ", 400, 450);
}
