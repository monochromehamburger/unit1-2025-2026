void lose(){
  background(76, 153, 252);
  highscore=max(score, highscore);
  gameStart=false;
  counter++;
  if(time/30==0){
    rows();
    columns();
  }
  else{
    columns();
    rows();
  }
  display();
  
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
    time=1 ;
    buttonX=random(0, 800);
    buttonY=random(0, 800);
  }
}
void display(){
  fill(0);
  textSize(100);
  text("you lost skill issue", 400, 225);
  text("Your score: "+score, 400, 425);
  text("Highscore: "+highscore, 400, 525);
}
void rows(){
  fill(212, 0, 30);
  int y=-25;
  while(y<800){
    rect(0, y, 800, 50);
    y+=100;
  }
}
void columns(){
  fill(100, 30, 188);
  int x=-25;
  while(x<800){
    rect(x, 0, 50, 800);
    x+=100;
  }
}
