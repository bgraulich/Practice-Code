float x, y, vx, vy, ax, ay, sz;

void setup() {
  size(500, 500);
  x=0;
  y=0;
  sz=50;
  colorMode(HSB,360,100,100,100);
}

void draw() {
  background(random(255),random(255),random(255));
  ax=random(-.5, .5);
  ay=random(-.5, .5);
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
  if (mousePressed){
    ax=random(-.5,.5);
    ay=random(-.5,.5);
  }
}
