void setup() {
  size(500, 500);
}

void draw() {
  println(pythagoras(3, 4));
}
float pythagoras(float b, float c) {
  float result = sqrt(b*b+c*c);
  return result;
}
