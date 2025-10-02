class Mover {
  float x, y;
  PVector location;
  int count;
  int lives;
  boolean finished=false;
  Mover(int count) {
    location= new PVector(width/2+200, height/2);

    this.count=count;
    lives=3;
  }
  void show() {
    stroke(0);
    
    if(lives>=5){
      fill(124, 131, 255);
    }
    else if(lives==4){
      fill(0, 13, 237);
    }
    else if(lives==3){
      fill(4, 121, 2);
    }
    else if(lives==2){
      fill(252, 252, 41);
    }
    else{
      fill(191, 13, 13);
    }
    strokeWeight(5);
    circle(location.x, location.y, 50);
    fill(0);
    textSize(25);
    text(count, location.x-10, location.y);
  }
  void act() {
    location.add(new PVector(random(-10, 10), random(-10, 10)));
    
    if((location.x<425+xChange/2 || location.x>1175-xChange/2 || location.y<25+xChange/2 || location.y>775-xChange/2)){
       loseLife(true);
    }
    if(dist(location.x, location.y, 500, 100)<=25){
      stroke(14, 201, 56);
      gainLife();
      line(500, 100, location.x, location.y);
    }
    if(dist(location.x, location.y, 500, 700)<=25){
      stroke(14, 201, 56);
      gainLife();
      line(500, 700, location.x, location.y);
    }
    if(dist(location.x, location.y, 1100, 700)<=25){
      stroke(14, 201, 56);
      gainLife();
      line(1100, 700, location.x,  location.y);
    }
    if(dist(location.x, location.y, 1100, 100)<=25){
      stroke(14, 201, 56);
      gainLife();
      line(1100, 100, location.x, location.y); 
    }
    
    
    if(event.equals("North Wind")){
      location.y-=0.5;
    }
    else if(event.equals("West Wind")){
      location.x-=0.5;
    }
    else if(event.equals("East Wind")){
      location.x+=0.5;
    }
    else if(event.equals("South Wind")){
      location.y+=0.5;
    }
    for(int i=0;i<enemies.size();i++){
      if(dist(enemies.get(i).x, enemies.get(i).y, location.x, location.y)<25){
        loseLife(true);
      }
    }
  }
  
  void loseLife(boolean moveBack){
    lives--;
    if(event.equals("x2 Life Gain/Loss")){
      lives--;
    }
    if(lives<=0){
      finished=true;
      deathOrder.add(count);
    }
    else{
      if(moveBack){      
        location.x=width/2+200;
        location.y=height/2;
      }
    }
  }
  void gainLife(){
      location.x=width/2+200;
      location.y=height/2;  
      if(event.equals("x2 Life Gain/Loss")){
        lives++;
      }
      lives++;
  }
}
