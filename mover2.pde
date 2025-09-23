float x;
float y;
Mover[] movers;
int n=50;
void setup(){
  size(800, 800);
  movers=new Mover[50];
  for(int i=0;i<50;i++){
    movers[i]=new Mover(i+1);
  }
}
void draw(){
  background(0);
  noStroke();
  stroke(255, 0, 0);
  for(int i=0;i<50;i++){
    movers[i].act();
    movers[i].show();  
  
  }
}
