int x;
int speedx;
int y;
int speedy;

void setup() {
  size(500,500);
  x=0;
  speedx=1;
  y=0;
  speedy=1;
}

void draw() {
background (map(mouseX,height,width,mouseY,0),map(mouseX,0,width,mouseX,255),map(mouseY,255,width,0,height));
  fill(map(mouseX,0,width,height,25),x/2,y/2);
  rect(width,mouseY,100,100);
  ellipse(x,y,25,25);

  x = x + speedx;
  if (x > width)
    speedx = -1;
  if (x == 0)
    speedx = 1;
  y = y + speedy;
  if (y > random(height))
    speedy = -1;
  if (y == 0)
    speedy = 1;
}
