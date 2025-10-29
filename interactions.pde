void keyPressed() {
  if (keyCode==UP) upkey=true;
  if (keyCode==DOWN) downkey=true;
  if (keyCode==LEFT) leftkey=true;
  if (keyCode==RIGHT) rightkey=true;
  if (key==' ') spacekey=true;
  if (key=='w') upkey=true;
  if (key=='s') downkey=true;
  if (key=='a') leftkey=true;
  if (key=='d') rightkey=true;
  if (key=='e'){
    if(player1.teleportTimer<0) player1.teleport();
  }
}
void keyReleased() {
  if (keyCode==UP) upkey=false;
  if (keyCode==DOWN) downkey=false;
  if (keyCode==LEFT) leftkey=false;
  if (keyCode==RIGHT) rightkey=false;
  if (keyCode==' ') spacekey=false;
  if (key=='w') upkey=false;
  if (key=='s') downkey=false;
  if (key=='a') leftkey=false;
  if (key=='d') rightkey=false;
  if (key=='p') mode=PAUSE;
  if (key=='1') player1.weaponNumber=1;
  if (key=='2') player1.weaponNumber=2;
  if (key=='3') player1.weaponNumber=3;
  if (key=='4') player1.weaponNumber=4;
  if (key=='5') player1.weaponNumber=5;
}
