class Particle extends GameObject{
  int timer;
  color particleColor;
  Particle(float x, float y, int time, color col){
    super(new PVector(x, y), new PVector(random(-3, 3), random(-3, 3)), 5);
    timer=time;
    particleColor=col;
    lives=1;
    d=5;
  }
  Particle(PVector loc, int time, color col, PVector v){
    super(loc, v, 10);
    timer=time;
    particleColor=col;
    lives=1;
    d=5;
  }
  void show(){
    noStroke();
    fill(particleColor, map(timer, 0, 60, 0, 255));
    circle(loc.x, loc.y, d);
  }
  void act(){
    move();
    timer--;
    if(timer<=0){
      lives=0;
    }
  }
  void move(){
    loc.x+=vel.x;
    loc.y+=vel.y;
  }
}
