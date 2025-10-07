void game() {
  background(0);
  player1.show();
  player1.act();
  int i=0;
  while (i<objects.size()) {
    GameObject currentObject=objects.get(i);
    currentObject.act();
    currentObject.show();
    if(currentObject.lives<=0){
      objects.remove(i);
    }
    else i++;
  }
  if(player1.lives<=0){
    mode=GAMEOVER;
  }
  fill(255, 0, 0);
  textSize(50);
  text("Lives: "+player1.lives, 100, 120);
}
