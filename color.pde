import processing.sound.*;
int mode=0;
float x3=0;
float y3=790;
float size=800;
float remove=1;
boolean goingUp2=true;
boolean gameStart=false;
boolean matches=true;
int chosenColor=0;
int random=0;
int score=0;
int timer=60;
int highscore=0;
SoundFile fail;
SoundFile success;
SoundFile music;
int numOfFrames=20;
int f=0;
int yOffset=-1000;
PImage[] gif;
color[] colors={#FF0000, #F5B207, #F4F507, #08A52E, #083BCE, #4E0974, #EA93B3, #000000, #FFFFFF, #888888, #964B00};
String[] texts={"Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Pink", "Black", "White", "Gray", "Brown"};
PFont font;
float buttonX;
float buttonY;
int time;
int counter;

void setup(){
  size(800, 800);
  fail = new SoundFile(this, "FAILURE.wav");
  success = new SoundFile(this, "SUCCESS.wav");
  music=new SoundFile(this, "MUSIC.mp3");
  music.loop();
  music.amp(1);
  gif=new PImage[numOfFrames];
  int i=0;
  while(i<numOfFrames){
    gif[i]=loadImage("frame_"+i+"_delay-0.1s.gif");
    i++;
  }
  font = createFont("ByteBounce.ttf", 128);
  textFont(font);
  buttonX=400;
  buttonY=400;
  counter=30;
}
void draw(){
  if(mode==0){
    intro();
  }
  else if(mode==2){
    lose();
  }
  else{
    game();
  }
}
void mousePressed(){
  //println(mode+" "+buttonX+" "+buttonY+" "+mouseX+" "+mouseY);
  if(dist(mouseX, mouseY, buttonX, buttonY)<=50 && mode!=1){
    begin();
  }
}
void begin(){
    if(gameStart==false){
      mode=1;
      gameStart=true;
      chosenColor=(int)random(0, 11);
      if ((int)random(0, 2)==0) {
        matches=true;
      } else {
        matches=false;
        random=(int) random(0, 11);
        while (random==chosenColor) {
          random=(int) random(0, 11);
        }
      }
      timer=60;
      score=0;
    }
}
