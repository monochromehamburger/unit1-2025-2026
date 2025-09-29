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
Button button4;
Button button5;
color bgColor=#483576;
PImage i;
PImage[] jif;
PImage[] jif2;
int jifLength;
int jifLength2;
void setup(){
  size(1000, 1000);
  button=new Button("idk", 500, 400, 200, 200, test, test2);
  button2=new Button("idk", 500, 600, 200, 200, test3, test4);
  i=loadImage("clueless.gif");  
  button3=new Button(i, 500, 200, 200, 200, test5, test6);
  jifLength=19;
  jif=new PImage[jifLength+1];
  for(int i=0;i<20;i++){
    jif[i]=loadImage("frame_"+i+"_delay-0.1s.gif");
  }  
  jifLength2=56;
  jif2=new PImage[jifLength2+1];
  for(int i=0;i<57;i++){
    jif2[i]=loadImage("frame_"+i+"_delay-0.03s.gif");
  }
  button4=new Button(jif, 200, 200, 200, 200, test5, test6);
  button5=new Button(jif2, 200, 400, 200, 200, test5, test6);
}
void draw(){
  background(bgColor);
  button.show();
  button2.show();
  button3.show();
  button4.show();
  button5.show();
  if(button.clicked){
    bgColor=button.highlight;
  }
  if(button2.clicked){
    bgColor=button2.highlight;
  }
  if(button3.clicked){
    bgColor=button3.highlight;
  }
  if(button4.clicked){
    bgColor=button4.highlight;
  }
  if(button5.clicked){
    bgColor=button5.highlight;
  }
  click();
}
void mousePressed(){
}
