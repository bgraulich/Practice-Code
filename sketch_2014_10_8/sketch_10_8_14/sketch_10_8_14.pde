int x=1;
int y=1;
int sz=50;
int vx=1;
int vy=1;
int k=height/2;
void setup() {
  size(650, 400);
}
void draw() {
  x+=vx;
  y+=vy;
  background(255, 125, 100);
  frameRate(250);
  ellipse(x, y, sz, sz);
  if (x+sz/2>=width) {
    vx=-1;
  }
  if (y+sz/2>=height) {
    vy=-1;
  }
  if (x-sz/2==0) {
    vx=1;
  }
  if (y-sz/2==0) {
    vy=1;
  }
  rect(width-sz/2, mouseY-sz/2, sz, sz);
  if(x+sz/2>=width-sz/2 && y+sz/2>=mouseY-sz/2 && y-sz/2<=mouseY+sz/2) {
    vx=-1;
  }
  rect(0-sz/2, k, sz, sz);
  if (x-sz/2==sz/2 && y+sz/2<=k+sz/2 && y-sz/2>=k-sz/2) {
    vx=1;
  }
}

