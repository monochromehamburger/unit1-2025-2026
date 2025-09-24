color test=#2349B3;
color test2=#d3f444;
boolean mouseReleased;
boolean wasPressed;
Button button;
void setup(){
  size(1000, 1000);
  button=new Button("idk", 500, 500, 500, 500, test, test2);
}
void draw(){
  button.show();
}
