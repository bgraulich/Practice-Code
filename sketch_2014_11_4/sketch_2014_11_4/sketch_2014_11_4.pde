int count = 50;
float [] x = new float[count];
float [] y = new float[count];
void setup() {
  background(0);
  size(500, 500);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(255);
  for (int i=0; i<count-1; i++) {
    x[i]=x[i+1];
    y[i]=y[i+1];
  } 
  x[count-1] = mouseX;
  y[count-1] = mouseY;
  for (int i=0; i<count; i++) {
    ellipse(x[i], y[i], i+20, i+20);
    fill(frameCount%360, 100, 100, 100);
  }
}

