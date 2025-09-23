float x;
float y;
Mover[] movers;
int n=50;
ArrayList<Integer> deathOrder=new ArrayList<>();
void setup(){
  size(1000, 800);
  movers=new Mover[50];
  for(int i=0;i<50;i++){
    movers[i]=new Mover(i+1);
  }
}
void draw(){
  background(0);
  stroke(255, 0, 0);
  strokeWeight(10);
  fill(0);
  rect(195, 5, 795, 795);
  for(int i=0;i<50;i++){
    if(movers[i].finished==false){
      movers[i].act();
      movers[i].show();  
    }
  }
  int temp=20;
  for(int i=0;i<deathOrder.size();i++){
    fill(255);
    text(50-i+": "+deathOrder.get(i), 0, temp);
    temp+=20;
  }
}
