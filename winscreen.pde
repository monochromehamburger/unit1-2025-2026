void winscreen() {
  background(0);
  fill(255);
  textSize(50);
  begin.show();
  text("U win yay", width/2, height/2-100);
  text("Press T to replay", width/2, height/2);
  if(begin.clicked){
    mode=GAME;
    commence();
  }
  click();
}
