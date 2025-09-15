void game() {
  timer--;
  if(timer==0){
    mode=2;
  }
  background(17, 18, 12);
  stroke(255);
  strokeWeight(5);
  fill(100, 60, 222);
  square(250, 200, 300);
  fill(255);
  textSize(75);
  fill(colors[chosenColor]);
  if (matches==true){
    text(texts[chosenColor], 400, 400);
  } else {
    text(texts[random], 400, 400);
  }
  fill(100, 200, 10);
  circle(200, 600, 100);
  circle(600, 600, 100);
  fill(0);
  textSize(60);
  text("Yes", 200, 625);
  text("No", 600, 625);
  fill(255);
  text("Your score: "+score, 400, 100);
  noStroke();
  fill(113, 24, 24);
  rect(200, 125, 400, 50);
  fill(46, 255, 239);
  rect(200, 125, map(timer, 0, 60, 0, 400), 50);
  
}
void mouseClicked(){
  if(dist(mouseX, mouseY, 200, 600)<=50){
    if(matches==true){
      score++;
      chosenColor=(int)random(0, 11);
      if ((int)random(0, 2)==0) {
        matches=true;
      } else {
        matches=false;
        random=(int) random(0, 11);
        while (random==chosenColor) {
          random=(int)random(0, 11);
        }
      }
      timer=60;
      success.play();
    }
    else{
      mode=2;
      fail.play();
    }  
  }
  if(dist(mouseX, mouseY, 600, 600)<=50){
    if(matches==false){
      score++;
      chosenColor=(int)random(0, 11);
      if ((int)random(0, 2)==0) {
        matches=true;
      } else {
        matches=false;
        random=(int) random(0, 11);
        while (random==chosenColor) {
          random=(int)random(0, 11);
        }
      }
      timer=60;
      success.play();
    }
    else{
      mode=2;
      fail.play();
    }
  }
}
