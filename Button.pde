class Button{
  int x, y, w, h;
  boolean clicked;
  color highlight, normal;
  String text="";
  PImage image;
  PImage[] gif;
  int index=0;
  Button(String t, int _x, int _y, int _w, int _h, color norm, color high){
    x=_x;
    y=_y;
    w=_w;
    h=_h;
    text=t;
    normal=norm;
    highlight=high;
    clicked=false;
  }
  
  Button(PImage p, int _x, int _y, int _w, int _h, color norm, color high){
    x=_x;
    y=_y;
    w=_w;
    h=_h;
    image=p;
    normal=norm;
    highlight=high;
    clicked=false;
  }
  Button(PImage[] g, int _x, int _y, int _w, int _h, color norm, color high){
    x=_x;
    y=_y;
    w=_w;
    h=_h;
    gif=g;
    normal=norm;
    highlight=high;
    clicked=false;
  }
  void show(){
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    if(mouseX >x-w/2 && mouseX<x+w/2 && mouseY>y-h/2 && mouseY<y+h/2){
      fill(highlight);
    }
    else{
      fill(normal);

    }
    stroke(0);
    strokeWeight(4);
    rect(x, y, w, h, 30);
    
    textAlign(CENTER, CENTER);
    if(mouseX >x-w/2 && mouseX<x+w/2 && mouseY>y-h/2 && mouseY<y+h/2){
      fill(normal);
    }
    else{
      fill(highlight);
    }
    textSize(w/4);
    text(text, x, y);
    
    if(image!=null){
      image(image, x-w/2+w/5, y-h/2+h/5, w-2*w/5, h-2*h/5);  
    }
    if(gif!=null){
      image(gif[index], x-w/2+w/5, y-h/2+h/5, w-2*w/5, h-2*h/5);
      index++;
      if(index==gif.length){
        index=0;
      }
    }
    if(mouseReleased==true) println(mouseReleased);
    if(mouseReleased && mouseX>x-w/2 && mouseX<x+w/2 && mouseY>y-h/2 && mouseY<y+h/2){
      clicked=true;
    }
    else{
      clicked=false;
    }
  }
}
