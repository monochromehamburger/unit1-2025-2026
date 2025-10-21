void pause() {
  background(0);
  fill(255);
  textSize(50);
  begin.show();
  println("EWERERERTT");
  text("PAUSED", width/2, height/2);
  if(begin.clicked){
    mode=GAME;
  }
  click();
}
