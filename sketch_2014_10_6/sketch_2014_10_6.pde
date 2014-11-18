int bw = 50;
int bh = 50;
void setup() {
  size(500, 500);
  background(random(255),random(255),random(255));
}
void draw() {
  for (int x=0; x<=width; x+=bw) {
    for (int y=0; y<=height; y+=bh) {
      rect(x,y,50,50);
      noFill();
    }
  }
  for (int y=0; y<=height; y+=50) {
    for (int x=0; x<=width; x+=50) {
      ellipse(x, y, 50, 50);
      ellipse(x, y, 50, 50);
    }
  }
}
