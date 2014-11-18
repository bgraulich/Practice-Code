void setup () {
  size(500, 500);
}

void draw () {
  println(quadplus(1,5,2));
  println(quadminus(1,5 ,2));
}

float quadplus (float a, float b, float c) {
  float result = (-b + sqrt((b*b)-4*(a*c)))/(2*a);
  return result;
}

float quadminus (float a, float b, float c) {
  float result = (-b - sqrt((b*b)-4*(a*c)))/(2*a);
  return result;
}

