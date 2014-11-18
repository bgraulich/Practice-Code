int x=0;
int y=0;
int vx=x+1;
int vy=y+1;
void setup() {
  size(500,500);
}
void draw() {
  background(50,100,150);
  ellipse(x,y,50,50);
  x=x+1;
  y=y+1;
  if(x>=width) {
    x=vx-1;
  }
  if(y>=height) {
    y=vy-1;
  }
}
