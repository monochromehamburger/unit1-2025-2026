
void pattern2(){
  noStroke();
  fill(73, 212, 131);
  while(y2<=900){
    rect(x2, y2, 50, 50);
    triangle(x2+50, y2-25, x2+50, y2+75, x2+100, y2+25);
    x2+=100;
    if(x2==800){
      y2+=100;
      x2=0;
    }
  }
}
