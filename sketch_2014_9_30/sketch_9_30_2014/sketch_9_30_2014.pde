int dia = 400;
void setup() {
  size(500, 500);
  background(random(255), random(255), random(255));
}
void draw() {
  while (dia > 15) {
    ellipse(width/2, height/2, dia, dia);
    dia=dia-15;
    fill(random(255), random(255), random(255));
  }
}
