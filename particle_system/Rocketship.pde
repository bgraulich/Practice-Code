class Rocketship {
  PVector loc, vel;
  float sz;
  Rocketship() {
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
    sz = 10;
  }  
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    loc.add(vel);
  }
  void wraparound() {
    if (loc.x > width + sz/2) {
      loc.x = -sz/2;
    }
    if (loc.y > height + sz/2) {
      loc.y = -sz/2;
    }
    if (loc.x < -sz/2) {
      loc.x = width + sz/2;
    }
    if (loc.y < -sz/2) {
      loc.y = height + sz/2;
    }
  }
}

