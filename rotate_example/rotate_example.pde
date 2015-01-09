PVector loc, vel;
float theta;

void setup() {
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  rectMode(CENTER);
  theta = vel.heading();
}

void draw() {
  loc.add(vel);
  background(0);
  pushMatrix();
  translate(loc.x, loc.y);
  rotate(theta);
  rect(0, 0, 30, 10);
  popMatrix();
}

