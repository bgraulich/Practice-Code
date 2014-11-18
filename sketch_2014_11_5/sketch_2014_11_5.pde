void setup() {
  size(500,500);
}
void greensquare(int x,int y, int l) {
  rect(x,y,l,l);
  fill(0,255,0);
}
void draw() {
  greensquare(mouseX,mouseY,50);
}
