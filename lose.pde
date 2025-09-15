void lose(){
  background(76, 153, 252);
  highscore=max(score, highscore);
  fill(0);
  text("you lost skill issue", 400, 200);
  text("Press A to restart", 400, 300);
  text("Your score: "+score, 400, 400);
  text("Highscore: "+highscore, 400, 500);
  gameStart=false;
}
