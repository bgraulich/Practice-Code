int dia = 400;
int count = 0;
int pointx = 0;
int pointy = 0;
int changex = 1;
int changey = 1;
void setup() {
  size(800,450);
}
void draw() {
    background(random(255),random(255),random(255));
  for(int dia = 400; dia > 15; dia = dia-15) {
    fill(random(255),random(255),random(255));
    ellipse(width/2,height/2,dia,dia);
    triangle(count, 0, mouseY, count, height, count);
  }
  
  for(int count = 0; count <= width; count+=10) {
    line(count, height, pointx, pointy); }
    pointx = pointx + changex;
    pointy = pointy + changey;
  if(pointx >= width) {
    changex = -1;
  }
  if(pointy >= height) {
    changey = -1;
  }
  if(pointx<=0){
    changex=1;
  }
  if(pointy<=0){
    changey=1;
  }
}
//for (initialize; test; increment)
