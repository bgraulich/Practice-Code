boolean ben;

void setup() {
  size(500, 500);
}
void draw() {
  if (mousePressed) {
    rect(random(width), random(height), random(25), random(25));
  }
  else {
    ellipse(random(width), random(height), random(25), random(25));
  }
}
void mousePressed() {
  if(ben==true) {
    ben=!ben;
  }
  else {
    ben=ben;
  }
}

