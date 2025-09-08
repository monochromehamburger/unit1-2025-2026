void pattern3(){
  fill(100, map(size, 0, 800, 0, 255), 200);
  rect(x3, y3, size, 10);
  y3+=10;
  x3=remove*remove;
  size=800-remove*remove*2;
  if(size<=0 || size>=800){
    goingUp2=!goingUp2;
  }
  if(goingUp2){
    remove+=0.245;
  }
  else{
    remove-=0.245;
  }  
}
