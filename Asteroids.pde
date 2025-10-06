final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
int mode=GAME;
boolean upkey, downkey, leftkey, rightkey, spacekey;
Spaceship player1;
ArrayList<GameObject> objects;

void setup() {
  size(1500, 1000, P2D);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  player1=new Spaceship();
  objects = new ArrayList();
  objects.add(player1);
  for(int i=0;i<15;i++){
    objects.add(new Asteroid());
  }
}
void draw() {
  if (mode==GAME) {
    game();
  }
}
