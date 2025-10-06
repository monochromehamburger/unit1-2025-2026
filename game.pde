void game() {
  background(0);
  player1.show();
  player1.act();
  int i=0;
  while (i<objects.size()) {
    GameObject currentObject=objects.get(i);
    currentObject.act();
    currentObject.show();
    if(currentObject.lives==0){
      objects.remove(i);
    }
    else i++;
  }
}
