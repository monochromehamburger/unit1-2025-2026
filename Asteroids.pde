final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int WIN=4;
int mode;
boolean upkey, downkey, leftkey, rightkey, spacekey;
Spaceship player1;
ArrayList<GameObject> objects;
int asteroidTimer;
float asteroidDelay;
int timeSurvived;
int UFOTimer;
int asteroidsDestroyed;
PFont font;
void setup() {
  mode=INTRO;
  size(1500, 1000, P2D);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  textAlign(CENTER);
  asteroidDelay=300;
  commence();
  font=createFont("Gameplay.ttf", 128);
  textFont(font);
}
void draw() {
  if (mode==GAME) {
    game();
  }
  else if(mode==GAMEOVER){
    lose();
  }
  else if(mode==WIN){
    winscreen();
  }
  else{
    background(0);
    textSize(100);
    fill(255);
    text("NOT ASTEROIDS", width/2, height/2);
    text("Press T to Start", width/2, height/2+100);  
  }
}
void commence(){
  player1=new Spaceship();
  objects = new ArrayList();
  objects.add(player1);
  timeSurvived=0;
  asteroidTimer=0;
  asteroidDelay=300;
  UFOTimer=0;
  asteroidsDestroyed=0;
}
