void lose() {
  background(0);
  fill(255);
  textSize(50);
  begin.show();
  text("skill issue", width/2, height/2-100);
  text("ur score: "+asteroidsDestroyed, width/2, height/2);
  if(begin.clicked){
    mode=GAME;
    commence();
  }
  click();
}
