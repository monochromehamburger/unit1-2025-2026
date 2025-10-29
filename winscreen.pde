boolean firstTime2=true;
float[] starX2=new float[50];
float[] starY2=new float[50];
float[] sizes2=new float[50];
void winscreen() {
  background(0);
  fill(255);
  if (firstTime==true) {
    for (int i=0; i<50;i++) {
      starX2[i]=random(0, width);
      starY2[i]=random(0, height);
      sizes2[i]=random(0, 20);
    }
    firstTime=false;
  }
  for (int i=0; i<25; i++) {
    circle(starX2[i], starY2[i], sizes2[i]);
  }
  textSize(50);
  begin.show();
  difficulty.show();
  fill(#AB9419);
  text("U win yay", width/2, height/2);
  if(begin.clicked){
    mode=GAME;
    hardMode=false;
    commence();
  }
  if(difficulty.clicked){
    mode=GAME;
    hardMode=true;
    commence();
  }
  click();
}
