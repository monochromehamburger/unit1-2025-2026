void game() {
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
}
void mouseClicked(){
  if(dist(mouseX, mouseY, 200, 600)<=100){
    if(matches==true){
    }
    else{
      mode=2;
    }
  }
}
