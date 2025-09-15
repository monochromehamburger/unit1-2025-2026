void intro(){
  noStroke();  
  image(gif[f], 0, 0, width, height);
  f++;
  if(f==20){
    f=0;
  }
  fill(200, 100, 30);
  //rect(200, 300, 400, 200);
  fill(255);
  textSize(100);
  textAlign(CENTER);
  text("Color Game", 400, 350);
  text("Press A to start  ", 400, 450);
}
