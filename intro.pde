void intro(){
  noStroke();  
  image(gif[f], 0, 0, width, height);
  f++;
  if(f==20){
    f=0;
  }
  fill(200, 100, 30);
  //rect(200, 300, 400, 200);
  fill(255);
  textSize(100);
  textAlign(CENTER);
  text("Color Game", 400, 350);
  
  fill(80, 53, 80);
  if(dist(buttonX, buttonY, mouseX, mouseY)<=50){
    fill(0);
  }
  circle(buttonX, buttonY, 100);
  textSize(50);
  fill(255);
  text("start", buttonX, buttonY);
  time++;
  if(time==60){
    time=0;
    buttonX=random(0, 800);
    buttonY=random(0, 800);
  }
  
}
