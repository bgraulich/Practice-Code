//declare the first GravityBall
GravityBall nadia;
GravityBall chris;
GravityBall brendan;
int sara;

void setup() {
  size(800, 600);
  //initialize the GravityBall
  nadia = new GravityBall();
  chris = new GravityBall();
  brendan = new GravityBall();
  sara = 16;
}

void draw() {
  background(0);
  nadia.display();
  nadia.move();
  nadia.bounce();
  chris.display();
  chris.move();
  chris.bounce();
  brendan.display();
  brendan.move();
  brendan.bounce();
}

class GravityBall {
  ////list information about the gravity ball
  //location
  //acceleration
  //velocity
  //size

  //declare variables
  PVector loc, vel, acc;
  float sz;

  //fill in the template with actual values
  //create a constructor
  GravityBall() {
    //inside here, we initialize variables and run any code that should occur at the moment the object is created
    sz = 50;
    loc = new PVector(random(sz, width-sz), random(height/2));
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
  }
  ////////////////////////////////////////////////////////////
  //below this line, we will define what a gravity ball does//
  ////////////////////////////////////////////////////////////

  //what does a gravity ball do?
  //bounce, moves, gets drawn, accelerates(part of moving)

  void display() {
    //display the ball
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    //move the ball
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
    //bounce ball off of floor
    if (loc.y > height - sz/2) {
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
  }
}
