void lose() {
  background(0);
  fill(255);
  textSize(50);
  begin.show();
  text("skill issue", width/2, height/2-100);
  text("ur score: "+asteroidsDestroyed, width/2, height/2);
  difficulty.show();
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
