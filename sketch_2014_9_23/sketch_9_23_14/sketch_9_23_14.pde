int x=100;
int y=100;
int dx=1;
int dy=1;
void setup() {
  size(800,500);
  frameRate(200);
  background(random(255),random(255),random(255));
}
void draw() {
  noStroke();
  fill(random(255),random(255),random(255));
  ellipse(x,y,50,50);
  x = x + dx;
  y = y + dy;
  if(y >= height) {
    dy=-1;
  }
  if(x >= width) {
    dx=-1;
  }
  if(y == 0) {
    dy=1;
  }
  if(x == 0) {
    dx=1;
  }
}
