final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int WIN=4;
boolean mouseReleased;
boolean wasPressed;
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
Button begin;
PImage[] jif;
int jifLength;
int jifIndex=0;
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
  jifLength=80;
  jif=new PImage[jifLength+1];
  for(int i=0;i<jifLength;i++){
    jif[i]=loadImage("frame_"+i+"_delay-0.04s.gif");
  }  
  begin= new Button("PLAY", width/2, height/2+100, 300, 100, #AB9419, #991233);
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
  else if(mode==PAUSE){
    pause();
  }
  else{
    background(0);
    textSize(100);
    fill(255);
    image(jif[jifIndex], 0, 0, width, height);
    jifIndex++;
    jifIndex%=jifLength;
    begin.show();
    text("NOT ASTEROIDS", width/2, height/2-300);
    text("P to Pause", width/2, height/2-200);
    text("WASD or Arrow Keys to move", width/2, height/2-100);
    text("Space to shoot", width/2, height/2);
    if(begin.clicked){
      mode=GAME;
      commence();
    }
    click();
  }
}
void commence(){
  player1=new Spaceship();
  objects = new ArrayList();
  objects.add(player1);
  timeSurvived=0;
  asteroidTimer=0;
  asteroidDelay=200;
  UFOTimer=0;
  asteroidsDestroyed=0;
  player1.teleportTimer=-130;
}
