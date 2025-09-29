class Enemy{
  float x, y, vx, vy;
  int size;
  boolean alive;
  Enemy(float x, float y, float vx, float vy, int size){
    this.x=x;
    this.y=y;
    this.vx=vx;
    this.vy=vy;
    this.size=size;
    alive=true;
  }
  void show(){
    fill(255, 0, 0);
    circle(x, y, size);
    x+=vx;
    y+=vy;
    if(x<-200 || x>1500 || y<-200 || y>1100){
      alive=false;
    }
  }
}
