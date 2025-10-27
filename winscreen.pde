void winscreen() {
  background(0);
  fill(255);
  textSize(50);
  begin.show();
  difficulty.show();
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
