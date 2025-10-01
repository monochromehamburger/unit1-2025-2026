float x;
float y;
Mover[] movers;
int n=50;
int timer=0;
int xChange=0;
String event="";
ArrayList<Integer> deathOrder=new ArrayList<>();
ArrayList<Enemy> enemies=new ArrayList<>();
ArrayList<deathBox> deathBoxes=new ArrayList<>();
void setup() {
  size(1200, 800, P2D);
  movers=new Mover[n];
  for (int i=0; i<n; i++) {
    movers[i]=new Mover(i+1);
  }
}
void draw() {
  timer++;

  if (timer>60*60 && timer%20==0) {
    xChange++;
  }
  background(0);
  stroke(255, 0, 0);
  strokeWeight(10);
  fill(0);
  rect(395+xChange/2, 5+xChange/2, 800-xChange, 790-xChange);

  if (event.equals("Social Distancing")) {
    for (int i=0; i<movers.length; i++) {
      for (int j=i+1; j<movers.length; j++) {
        float distance=dist(movers[i].location.x, movers[i].location.y, movers[j].location.x, movers[j].location.y);
        if (distance<=100 && movers[i].finished==false && movers[j].finished==false) {
          stroke(255, 255, 255, 100);
          line(movers[i].location.x, movers[i].location.y, movers[j].location.x, movers[j].location.y);
          if (dist(movers[i].location.x+1, movers[i].location.y, movers[j].location.x, movers[j].location.y)>distance) {
            movers[i].location.x+=0.3;
            movers[j].location.x-=0.3;
          }
          if (dist(movers[i].location.x, movers[i].location.y+1, movers[j].location.x, movers[j].location.y)>distance) {
            movers[i].location.y+=0.3;
            movers[j].location.y-=0.3;
          }
        }
      }
    }
  }
  for (int i=0; i<n; i++) {
    if (movers[i].finished==false) {
      movers[i].show();
      movers[i].act();
    }
  }
  int temp=45;
  int temp2=0;
  for (int i=0; i<deathOrder.size(); i++) {
    fill(255);
    text(n-i+": "+deathOrder.get(i), temp2, temp);
    temp+=30;
    if (temp>=770) {
      temp=45;
      temp2+=80;
    }
  }
  fill(14, 201, 56);
  noStroke();
  circle(500, 100, 25);
  circle(500, 700, 25);
  circle(1100, 700, 25);
  circle(1100, 100, 25);

  //if(event.equals("Extra Danger")){
  //  fill(255, 0, 0);
  //  circle(800, 200, 50);
  //  circle(800, 600, 50);
  //  circle(1000, 400, 50);
  //  circle(600, 400, 50);
  //}

  float r=random(0, 2000);
  if (r<1) {
    event="North Wind";
  } else if (r<2) {
    event="West Wind";
  } else if (r<3) {
    event="East Wind";
  } else if (r<4) {
    event="South Wind";
  } else if (r<5) {
    event="";
  } else if (r<6) {
    event="x2 Life Gain/Loss";
  } else if (r<7) {
    event="Social Distancing";
  }
  if (random(0, 100)<1) {
    float ra=random(400, 1200);
    while(abs(ra-400)<200){
      ra=random(0, 800);
    }
    enemies.add(new Enemy(200, ra, 2, 0, 25));
  }
  if(random(0, 200)<1){
    float ra=random(400, 1200);
    while(abs(ra-800)<100){
      ra=random(400, 1200);
    }
    enemies.add(new Enemy(ra, -100, 0, 2, 25));
  }
  if (random(0, 400)<1) {
    deathBoxes.add(new deathBox(random(300, width), random(0, height), 200));
  }

  for (int i=enemies.size()-1; i>=0; i--) {
    enemies.get(i).show();
    if (enemies.get(i).alive==false) {
      enemies.remove(i);
    }
  }
  for (int i=deathBoxes.size()-1; i>=0; i--) {
    deathBoxes.get(i).show();
    if (deathBoxes.get(i).alive==false) {
      deathBoxes.remove(i);
    }
  }
  fill(255);
  text("Current event:", 200, 50);
  text(event, 200, 150);
}
