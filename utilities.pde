void click(){
  mouseReleased=false;
  if(mousePressed) wasPressed=true;
  if(wasPressed &&   mousePressed==false){
    mouseReleased=true;
    wasPressed=false;
  }
  //println("you suck "+ mouseReleased+" "+wasPressed+" "+mousePressed);
}
