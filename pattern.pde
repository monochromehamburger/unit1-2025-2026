int page=0;
int x=720;
int y=0;
int x2=0;
int y2=0;
float x3=0;
float y3=790;
float size=800;
float remove=1;
boolean goingUp=true;
boolean goingUp2=true;
void setup(){
  size(800, 800);
  background(16, 67, 41);
}
void draw(){
  if(page==0){
    noStroke();
    fill(x/3, y/3, 255);
    circle(400*cos(x)+400, 400*sin(y)+400, 100);
    circle(800-(400*cos(x)+400), (400*sin(y)+400), 100);
    circle(800-(400*cos(x)+400), 800-(400*sin(y)+400), 100);
    circle((400*cos(x)+400), 800-(400*sin(y)+400), 100);
    if(x==0){
      goingUp=true;
    }
    if(x==720){
      goingUp=false;
    }
    if(goingUp){
      x+=3;
      y-=3;
    }
    else{
      x-=3;
      y+=3;
    }
  }
  else if(page==1){
    pattern2();
  }
  else{
    pattern3();
  }
  fill(255);
  textSize(50);
  text(page+1, 30, 50);
  circle(50, 400, 50);
  circle(750, 400, 50);
  fill(0);
  triangle(30, 400, 60, 380, 60, 420);
  triangle(770, 400, 740, 380, 740, 420);
}
void reset(){
    background(16, 67, 41);
    x=720;
    y=0;
    x2=0;
    y2=0;
    x3=0;
    y3=790;
    size=800;
    remove=1;
    goingUp2=true;
}
void mouseClicked(){
  if(dist(mouseX, mouseY, 750, 400)<=25){
    page++;
    reset();
  }
  if(dist(mouseX, mouseY, 50, 400)<=25){
    page--;
    reset();
  }
  page+=3;
  page%=3;
}
