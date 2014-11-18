int x=50;
int y=50;
int ell=50;
int rec=50;
int vx=1;
int vy=1;
int k=200;
int score1=0;
int score2=0;
void setup() {
  size(675, 425);
}
void draw() {
  rectMode(CENTER);
  frameRate(375);
  x+=vx;
  y+=vy;
  background(255, 125, 100);
  ellipse(x, y, ell, ell);
  text("Score", width/2-12.5, 50);
  text(score1, width/2-50, 50);
  text(score2, width/2+50, 50);
  if (x+ell/2>=width) {
    vx=-1;
    score2=score2+1;
  }
  if (y+ell/2>=height) {
    vy=-1;
  }
  if (x-ell/2<=0) {
    vx=1;
    score1=score1+1;
  }
  if (y-ell/2<=0) {
    vy=1;
  }
  rect(width, mouseY, rec, rec);
  if (x+ell/2>=width-rec/2 && y+ell/2>=mouseY-rec/2 && y-ell/2<=mouseY+rec/2) {
    vx=-1;
  }
  rect(0, k, rec, rec);
  if (x-ell/2<=rec/2 && y+ell/2>=k-rec/2 && y-ell/2<=k+rec/2) {
    vx=1;
  }
  if (keyPressed) {
    if (key=='w') {
      k+=-1;
    }
  }
  if (keyPressed) {
    if (key=='s') {
      k+=1;
    }
  }
  if (score1 >= 10) {
    x=width/2;
    y=1000;
    text("PLAYER 1 WINS!", width/2, height/2);
    text("CLICK TO RESTART", width/2, height/2+20);
  }
  if (mousePressed) {
    score1 = 0;
    score2 = 0;
    x=50;
    y=50;
    k=height/2;
    vx=1;
  }

  if (score2 >= 10) {
    x=width/2;
    y=1000;
    text("PLAYER 2 WINS!", width/2, height/2);
    text("CLICK TO RESTART", width/2, height/2+20);
  }
  if (mousePressed) {
    score1 = 0;
    score2 = 0;
    x=50;
    y=50;
    k=height/2;
    vx=1;
  }
}

