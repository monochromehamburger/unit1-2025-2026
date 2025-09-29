class deathBox{
  float x, y;
  int size;
  boolean alive;
  int timer;
  boolean opposite=false;
  deathBox(float x, float y, int size){
    this.x=x;
    this.y=y;
    this.size=size;
    alive=true;
    timer=300;
    if(random(0, 5)<1){
      opposite=true;
    }
  }
  void show(){
    strokeWeight(5);
    if(!opposite){
      stroke(255, 0, 0);
      if(timer!=1) fill(255, 0, 0, 0);
      else{
        fill(255, 0, 0);
      }
      square(x, y, size);
      fill(255, 0, 0);
      text("BOX OF DEATH", x, y+25);
      text("TIMER: "+(timer/60+1), x, y+50);
      timer--;
      if(timer==0){
        for(int i=0;i<50;i++){
          if(movers[i].finished==false && movers[i].location.x>x && movers[i].location.y>y && movers[i].location.x<x+size && movers[i].location.y<y+size){
            movers[i].loseLife();
          }
        }
        alive=false;
      }
    }
    else{
      stroke(14, 201, 56);
      if(timer!=1) fill(255, 0, 0, 0);
      else{
        fill(14, 201, 56);
      }
      square(x, y, size);
      fill(14, 201, 56);
      text("BOX OF LIFE", x, y+25);
      text("TIMER: "+(timer/60+1), x, y+50);
      timer--;
      if(timer==0){
        for(int i=0;i<50;i++){
          if(movers[i].finished==false && movers[i].location.x>x && movers[i].location.y>y && movers[i].location.x<x+size && movers[i].location.y<y+size){
            movers[i].loseLife();
          }
        }
        alive=false;
      }
    }
  }
}
