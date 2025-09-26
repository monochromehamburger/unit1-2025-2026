float x;
float y;
Mover[] movers;
int n=50;
int timer=0;
int xChange=0;
String event="";
ArrayList<Integer> deathOrder=new ArrayList<>();
void setup(){
  size(1200, 800, P2D);
  movers=new Mover[n];
  for(int i=0;i<n;i++){
    movers[i]=new Mover(i+1);
  }
}
void draw(){
  timer++;
  
  if(timer>60*60 && timer%20==0){
    xChange++;
  }
  background(0);
  stroke(255, 0, 0);
  strokeWeight(10);
  fill(0);
  rect(395+xChange/2, 5+xChange/2, 800-xChange, 790-xChange);
  for(int i=0;i<n;i++){
    if(movers[i].finished==false){
      movers[i].show();  
      movers[i].act();
    }
  }
  int temp=45;
  int temp2=0;
  for(int i=0;i<deathOrder.size();i++){
    fill(255);
    text(n-i+": "+deathOrder.get(i), temp2, temp);
    temp+=30;
    if(temp>=770){
      temp=45;
      temp2+=80;
    }
    
  }
  fill(14, 201, 56);
  noStroke();
  circle(500, 100, 25);
  circle(500, 700, 25);
  circle(1100, 700, 25);
  circle(1100, 100, 25);
  
  if(event.equals("Extra Danger")){
    fill(255, 0, 0);
    circle(800, 200, 50);
    circle(800, 600, 50);
    circle(1000, 400, 50);
    circle(600, 400, 50);
  }
  
  float r=random(0,2000);
  if(r<1){
    event="North Wind";
  }
  else if(r<2){
    event="West Wind";
  }
  else if(r<3){
    event="East Wind";
  }
  else if(r<4){
    event="South Wind";
  }
  else if(r<5){
    event="";
  }
  else if(r<6){
    event="x2 Life Gain/Loss";
  }
  else if(r<8){
    event="Extra Danger";
  }
  text("Current event:", 200, 50);
  text(event, 200, 150);
}
