void setup() {
  size(500,500);
  background(map(random(255),random(255),random(255),random(255),random(255)),map(random(255),random(255),random(255),random(255),random(255)),map(random(255),random(255),random(255),random(255),random(255)));
}
void draw() {
  fill(random(255),random(255),random(255),75);
   ellipse(random(500),random(500),random(100),random(100));
   rect(random(500),random(500),random(100),random(100));
   triangle(random(500),random(500),random(500),random(500),random(500),random(500));
   line(random(500),random(500),random(500),random(500));
}
