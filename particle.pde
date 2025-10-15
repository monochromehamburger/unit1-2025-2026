class Particle extends GameObject{
  int timer;
  Particle(float x, float y, int time){
    super(new PVector(x, y), new PVector(random(-5, 5), random(-5, 5)), 1);
    timer=time;
  }
}
