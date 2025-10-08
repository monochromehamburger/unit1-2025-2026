final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
int mode=GAME;
boolean upkey, downkey, leftkey, rightkey, spacekey;
Spaceship player1;
ArrayList<GameObject> objects;
int asteroidTimer;
float asteroidDelay;
int timeSurvived;
int UFOTimer;
void setup() {
  size(1500, 1000, P2D);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  textAlign(CENTER);
  asteroidDelay=300;
  start();
}
void draw() {
  if (mode==GAME) {
    game();
  }
  else if(mode==GAMEOVER){
    lose();
  }
}
void start(){
  player1=new Spaceship();
  objects = new ArrayList();
  objects.add(player1);
  timeSurvived=0;
  asteroidTimer=0;
  asteroidDelay=300;
  UFOTimer=0;
}
