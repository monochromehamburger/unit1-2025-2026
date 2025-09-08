void pattern3(){
  fill(map(size, 0, 800, 0, 255));
  rect(x3, y3, size, 10);
  y3+=10;
  x3=remove*remove;
  size=800-remove*remove*2;
  if(size<=0 || size>=800){
    goingUp=!goingUp;
  }
  if(goingUp){
    remove+=0.27;
  }
  else{
    remove-=0.27;
  }
}
