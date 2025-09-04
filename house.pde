//Tim Yang
//Sept 4
int sunY=0;
int moonY=0;
float brightness=0;
boolean goingUp=false;
void setup(){
  size(1500, 1000);
  moonY=-1250;
}

void draw(){
  sunY+=2;
  moonY+=2;
  if(goingUp){
    brightness+=0.4;
  }
  else{
    brightness-=0.4;
  }
  if(brightness>300){
    goingUp=false;
  }
  if(brightness<0){
    goingUp=true;
  }
  if(sunY>2000){
    sunY=-500;
  }
  if(moonY>2000){
    moonY=-500;
  }
  //background 
  background(0, 236-brightness, 255-brightness);
  
  //moon
  noStroke();
  fill(250, 244, 45);
  circle(800, moonY, 500);
  fill(0, 236-brightness, 255-brightness);
  circle(750, moonY, 450);
  
  //sun
  fill(250, 244, 45);
  circle(750, sunY, 500);
  
  //land
  stroke(0);
  fill(20, 167, 60);
  rect(0, 800, 1500, 200);
  
  //house
  strokeWeight(5);
  fill(27, 149, 9);
  rect(800, 400, 500, 500);
  fill(0, 0, 100);
  triangle(800, 400, 1050, 200, 1300, 400);
  
  //door
  fill(62, 4, 4);
  rect(1100, 700, 100, 200);
  fill(0, 0, 0);
  circle(1175, 800, 25);
  
  //windows
  fill(94, 245, 233);
  square(900, 500, 100);
  square(1100, 500, 100);
  line(950, 500, 950, 600);
  line(900, 550, 1000, 550);
  line(1150, 500, 1150, 600);
  line(1100, 550, 1200, 550);
  
  //tree
  fill(46, 21, 21);
  rect(300, 600, 100, 300);
  fill(14, 67, 22);
  circle(350, 500, 300);
  
}
