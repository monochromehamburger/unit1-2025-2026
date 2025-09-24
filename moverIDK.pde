float x;
float y;
Mover[] movers;
int n=50;
int timer=0;
int xChange=0;
ArrayList<Integer> deathOrder=new ArrayList<>();
void setup(){
  size(1000, 800);
  movers=new Mover[50];
  for(int i=0;i<50;i++){
    movers[i]=new Mover(i+1);
  }
}
void draw(){
  timer++;
  
  if(timer>15*60 && timer%5==0){
    xChange++;
  }
  background(0);
  stroke(255, 0, 0);
  strokeWeight(10);
  fill(0);
  rect(195+xChange/2, 5+xChange/2, 800-xChange, 790-xChange);
  for(int i=0;i<50;i++){
    if(movers[i].finished==false){
      movers[i].show();  
      movers[i].act();
    }
  }
  int temp=45;
  int temp2=0;
  for(int i=0;i<deathOrder.size();i++){
    fill(255);
    text(50-i+": "+deathOrder.get(i), temp2, temp);
    temp+=30;
    if(temp>=770){
      temp=45;
      temp2+=80;
    }
    
  }
  fill(14, 201, 56);
  noStroke();
  circle(300, 100, 25);
  circle(300, 700, 25);
  circle(900, 700, 25);
  circle(900, 100, 25);
}
