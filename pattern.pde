int page=1;
int x=720;
int y=0;
int x2=0;
int y2=0;
float x3=0;
float y3=0;
float size=800;
float remove=1;
boolean goingUp=true;
boolean goingUp2=true;
void setup(){
  size(800, 800);
  background(16, 67, 41);
}
void draw(){
  if(page==1){
    noStroke();
    fill(x/3, y/3, 100);
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
  else if(page==2){
    pattern2();
  }
  else{
    pattern3();
  }
  fill(255);
  textSize(50);
  text(page, 30, 50);
  println(page);
}
void keyPressed(){
  if(key=='a'){
    page--;
    page=max(page, 1);
    background(16, 67, 41);
    x=720;
    y=0;
    x2=0;
    y2=0;
    x3=0;
    y3=0;
    size=800;
    remove=1;
    goingUp2=true;
  }
  else if(key=='d'){
    page++;
    page=min(page, 3);
    background(16, 67, 41);
    x=720;
    y=0;
    x2=0;
    y2=0;
    x3=0;
    y3=0;
    size=800;
    remove=1;
    goingUp2=true;
  }
}
