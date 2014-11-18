int x;
int y;
void setup() {
  size(300, 300);
}
void draw() {
colorMode(HSB);
background(frameCount%255, 160,180);
colorMode(RGB);
  int x = mouseX;
  int y = mouseY;
  fill(240, 170, 130);
  ellipse(x, y, 60, 60);
  //Body
  line(x, y+30, x, y+90);
  //Arms
  line(x, y+30, x-30, y+60);
  line(x, y+30, x+30, y+60);
  //Legs
  line(x, y+90, x-30, y+130);
  line(x, y+90, x+30, y+130);
  //Eyes
  fill(255, 255, 255);
  ellipse(x-14, y-4, 16, 16);
  ellipse(x+14, y-4, 16, 16);
  //Pupils
  fill(100, 200, 100);
  ellipse(x-14, y-4, 6, 6);
  ellipse(x+14, y-4, 6, 6);
  //Mouth
  fill(255, 0, 0);
  arc(x, y+15, 16, 8, 0, PI); line(x-8, y+15, x+8, y+15);
}
