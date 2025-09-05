void setup(){
  size(1500, 800);
}
void draw(){
  face(700, 500, 2);
}
void face(int x, int y, int size){
  stroke(5);
  pushMatrix();
  translate(x, y);
  scale(size);
  fill(67, 41, 172);
  circle(0, 0, 200);
  mouth(0, 70);
  eye(-40, -30);
  eye(40, -30);
  popMatrix();
}
void eye(int x, int y){
  fill(0);
  circle(x, y, 25);
  fill(255);
  circle(x-5, y-5, 10);
}
void mouth(int x, int y){
  noStroke();
  fill(72, 13, 13);
  circle(x, y-50, 130);
  fill(67, 41, 172);
  circle(x, y-90, 160);
  fill(277, 44, 44);
}
