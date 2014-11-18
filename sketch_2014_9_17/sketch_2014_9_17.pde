int x;
int y;

void setup() {
  size(500,500);
  x=0;
  y=0;
}

void draw() {
background (map(mouseX,0,width,mouseY,width),map(mouseX,0,width,mouseX,255),map(mouseY,0,width,0,255));
  noStroke();
  fill(map(mouseX,0,width,100,500),x/2,y/2);
  ellipse(mouseX,mouseY,50,50);
  x=x+1;
  y=y+1;
}
