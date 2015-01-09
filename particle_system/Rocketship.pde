class Rocketship {
  //Declare the location, velocity, size, and image for the rocketship
  PVector loc, vel;
  float sz;
  PImage rocketship;
  //Declare the variable for the angle
  float theta;
  Rocketship() {
    //Initialize the location, velocity, size, and image for the rocketship
    loc = new PVector(mouseX, mouseY);
    sz = 100;
    rocketship = loadImage("rocketship.png");
    //Change rectangle mode to rotate around the center
    imageMode(CENTER);
    //Initialize the variable for the angle
  }  
  void display() {
    //Set rocketship location to the mouse location
    loc.set(mouseX, mouseY);
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

