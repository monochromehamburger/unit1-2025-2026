void game() {
  timer--;
  if (timer==0) {
    mode=2;
  }
  background(17, 18, 12);
  stroke(0);
  strokeWeight(5);
  design();
  fill(100, 60, 222);
  square(250, 200, 300);
  fill(255);
  textSize(75);
  fill(colors[chosenColor]);
  if (matches==true) {
    text(texts[chosenColor], 400, 400);
  } else {
    text(texts[random], 400, 400);
  }
  text();
}
void design() {
  int x=0;
  int y=yOffset;
  fill(57, 80, 53);
  while (y<=1000) {
    circle(x, y, 100);
    x+=100;
    if (x>800) {
      x=0;
      y+=100;
    }
  }
  yOffset++;
  if (yOffset==0) {
    yOffset=-1000;
  }
}
void text() {
  fill(100, 200, 10);
  if (dist(mouseX, mouseY, 200, 600)<=50) {
    fill(6.3, 77.6, 221.3);
  }
  circle(200, 600, 100);
  fill(255, 80, 10);
  if (dist(mouseX, mouseY, 600, 600)<=50) {
    fill(6.3, 77.6, 221.3);
  }
  circle(600, 600, 100);
  fill(0);
  textSize(60);
  text("Yes", 200, 625);
  text("No", 600, 625);
  
  fill(255);
  text("A: Yes", 200, 700);
  text("D: No", 600, 700);
  text("Your score: "+score, 400, 100);
  noStroke();
  fill(113, 24, 24);
  rect(200, 125, 400, 50);
  fill(46, 255, 239);
  rect(200, 125, map(timer, 0, 60, 0, 400), 50);
}
void mouseClicked() {
  if (gameStart) {
    if (dist(mouseX, mouseY, 200, 600)<=50) {
      matchesCheck();
    }
    if (dist(mouseX, mouseY, 600, 600)<=50) {
      notMatchesCheck();
    }
  }
}
