float x, y, vx, vy, ax, ay;
int sz;

void setup() {
  size(500, 500);
  x=width/2;
  y=0;
  vx=.1;
  vy=.1;
  ax=.1;
  ay=.1;
  sz=50;
}

void draw() {
  background(100,200,300);
  ellipse(x, y, sz, sz);
  vx+=ax;
  vy+=ay;
  x+=vx;
  y+=vy;
  if(y+sz/2>=height){
    y=height-sz/2;
    vy*=-1;
  }
  if(x+sz/2>=width){
    x=width-sz/2;
    vx=-.1;
    vx*=-1;
  }
  if(x-sz/2<=0){
    x=sz/2;
    vx=.1;
    vx*=-1;
  }
}

