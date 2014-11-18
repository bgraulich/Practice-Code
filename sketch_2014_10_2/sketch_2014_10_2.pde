//|| = or
//if(mouseX > width/3 && mouseX < 2 * width/3) {
//ellipse(mouseX, mouseY, 20, 20);
int barwidth = 100;
void setup() {
  size(500, 500);
}
void draw() {
  for (int i=0; i<=width;i+=100) {
    if (mouseX > i && mouseX < i + barwidth && mouseY > i && mouseY < i + barwidth) {
      fill(random(255),random(255), random(255));
    }
    else {
      fill(255, 100, 0);
    }
    rect(i, 0, barwidth, width);
    rect(0, i, height, barwidth);
  }
}

