final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
int mode=GAME;
boolean upkey, downkey, leftkey, rightkey;
Spaceship player1;
void setup(){
  size(1000, 1000, P2D);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  player1=new Spaceship();
}
void draw(){
  if(mode==GAME){
    game();
  }
}
