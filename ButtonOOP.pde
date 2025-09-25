color test=#2349B3;
color test2=#d3f444;
color test3=#775364;
color test4=#AB495F;
color test5=#267823;
color test6=#EEA834;
boolean mouseReleased;
boolean wasPressed;
Button button;
Button button2;
Button button3;
color bgColor=#483576;
void setup(){
  size(1000, 1000);
  button=new Button("idk", 500, 400, 200, 200, test, test2);
  button2=new Button("idk", 500, 600, 200, 200, test3, test4);
  button3=new Button("idk", 500, 200, 200, 200, test5, test6);
}
void draw(){
  background(bgColor);
  button.show();
  button2.show();
  button3.show();
  if(button.clicked){
    bgColor=button.highlight;
  }
  if(button2.clicked){
    bgColor=button2.highlight;
  }
  if(button3.clicked){
    bgColor=button3.highlight;
  }
  click();
}
void mousePressed(){
}
