void lose(){
  background(76, 153, 252);
  highscore=max(score, highscore);
  fill(0);
  textSize(100);
  text("you lost skill issue", 400, 200);
  text("Press A to restart", 400, 300);
  text("Your score: "+score, 400, 400);
  text("Highscore: "+highscore, 400, 500);
  gameStart=false;
  
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
