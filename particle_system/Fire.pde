class Fire {
  //Declare and initialize the number of flames
  int flames = 100;
  //Declare and initialize the size of each flame
  float sz = 20;
  //Declare the location and velocity vectors the flames
  PVector loc, vel;
  //Decalre and initialize the float for the opacity
  float tempfade = 255;
  //Declare and initialize the color of the flame
  color flamecolor = color(255, 100, 0, tempfade);
  //Initialize the location and velocity vectors
  Fire(float tempsz) {
    sz = tempsz;
    loc = new PVector(mouseX, mouseY);
    vel = PVector.random2D();
  }
  void display() {
    //Fill in each flame
    fill(flamecolor);
    //Draw the flame
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    //Move the flame
    loc.add(vel);
  }
  void fade() {
    //Gradually fade each flame
    if (tempfade != 0) {
      tempfade-=5;
    }
    //Adjust the color of the flame
    flamecolor = color(255, 100, 0, tempfade);
  }
  //Check to see if opacity has reached zero
  //If it has, then the circle is deleted
  //If it hasn't, then the circle stays until it has
  boolean fadecheck() {
    if (tempfade == 0) {
      return true;
    } else {
      return false;
    }
  }
}

