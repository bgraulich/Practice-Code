float x, y, vx, vy, ax, ay, sz;

void setup() {
  size(500, 500);
  x=;
  y=;
  sz=50;
}

void draw() {
  ax=random(.1, -.1);
  ay=random(.1, -.1);
  vx+=ax;
  vy+=ay;
  x+=vx;
  y+=vy;
  fill(frameCount%360, 100, 100, 100);
  ellipse(x, y, sz, sz);
  if (x-sz/2>width){
     x=-sz/2;
  }
  if (x+sz/2<0){
    x=width+sz/2;
  }
  if (y-sz/2>height){
    y=-sz/2;
  }
  if (y+sz/2<0){
    y=height+sz/2;
  }
}
