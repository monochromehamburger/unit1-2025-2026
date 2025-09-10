
void pattern2(){
  noStroke();
  while(y2<=900){
    for(int i=0;i<10;i++){
      fill(73-i*10, 212-i*20, 131-i*15);
      pushMatrix();
      translate(x2+i*5, y2+i*2.5);
      scale(1-i*0.1);
      rect(0, 0, 50, 50);
      triangle(+50, -25, +50, +75, 100, +25);
      popMatrix();
    }
    x2+=100;
    if(x2==800){
      y2+=100;
      x2=0;
    }
  }
}
