Rocketship r;
Fire f;
ArrayList<Fire> bullets = new ArrayList<Fire>();
class Rocketship {
  //Declare the location, velocity, size, and image for the rocketship
  PVector loc, vel;
  float sz;
  PImage rocketship;
  //Declare the variable for the angle
  float theta;
  Rocketship() {
    //Initialize the location, velocity, size, and image for the rocketship
    loc = new PVector(width/2, height/2);
    sz = 100;
    rocketship = loadImage("rocketship.png");
    //Change rectangle mode to rotate around the center
    imageMode(CENTER);
    //Initialize the variable for the angle
  }  
  void display() {
    //Set rocketship location to the mouse location
    loc.set(width/2, height/2);
  }

  void update() {
    vel = new PVector(mouseX-pmouseX, mouseY-pmouseY);
    theta = vel.heading();
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(theta);
    //Display the image
    image(rocketship, 0, 0, sz, sz);
    popMatrix();
  }
}
class Fire {
  PVector loc, vel;
  float sz = 10;
  int bullet = 1;
  float theta;

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
    loc.set(width/2, height/2);
  }
  void update() {
    vel = PVector.random2D();
    theta = vel.heading();
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(theta);
    popMatrix();
  }
}
void setup() {
  size(500, 500);
  //Initialize a new rocketship and a new fireball
  r = new Rocketship();
  f = new Fire();
}
void draw() {
  background(255);
  bullets.add(new Fire());
  for (int i = 0; i < bullets.size (); i++) {
    f = bullets.get(i);
    if (mousePressed) {
      f.diplay();
      f.update();
    }
  }
  r.display();
  //Update the rotation of the rocketship every frame
  r.update();
}

