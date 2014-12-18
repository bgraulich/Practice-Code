Rocketship r;

void setup() {
  size(500, 500);
  r = new Rocketship();
}

void draw() {
  r.display();
  r.move();
  r.wraparound();
}
