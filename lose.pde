boolean firstTime=true;
float[] starX=new float[50];
float[] starY=new float[50];
float[] sizes=new float[50];
void lose() {
  background(0);
  fill(255);
  if (firstTime==true) {
    for (int i=0; i<50;i++) {
      starX[i]=random(0, width);
      starY[i]=random(0, height);
      sizes[i]=random(0, 20);
    }
    firstTime=false;
  }
  for (int i=0; i<25; i++) {
    circle(starX[i], starY[i], sizes[i]);
  }
  textSize(50);
  begin.show();
  fill(#AB9419);
  text("skill issue", width/2, height/2-100);
  text("ur score: "+asteroidsDestroyed, width/2, height/2);
  difficulty.show();
  if (begin.clicked) {
    mode=GAME;
    hardMode=false;
    commence();
  }
  if (difficulty.clicked) {
    mode=GAME;
    hardMode=true;
    commence();
  }
  click();
}
