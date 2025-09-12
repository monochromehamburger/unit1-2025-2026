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
color[] colors={#FF0000, #F5B207, #F4F507, #08A52E, #083BCE, #4E0974, #EA93B3, #000000, #FFFFFF, #888888, #4D090C};
String[] texts={"Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Pink", "Black", "White", "Gray", "Brown"};
void setup(){
  size(800, 800);
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
void keyPressed(){
  if(key=='a'){
    mode=1;
    gameStart=true;
    chosenColor=(int)random(0, 12);
    if ((int)random(0, 2)==0) {
      matches=true;
    } else {
      matches=false;
      random=(int) random(0, 12);
      while (random==chosenColor) {
        random=(int)random(0, 12);
      }
    }
  }
}
