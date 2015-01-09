//Declare a rocketship, fire, and the boundaries of the fire
Rocketship r;
Fire f;
float setupfloat = 25;
//Declare the array list for the fireballs
ArrayList<Fire> fireballs = new ArrayList<Fire>();
//Declare the image for the background
PImage space;


void setup() {
  size(500, 500);
  //Initialize a new rocketship and a new fireball
  r = new Rocketship();
  f = new Fire(setupfloat);
  imageMode(CENTER);
  //Load the image for the background
  space = loadImage("spacebackground.jpg");
}

void draw() {
  background(0);
  noStroke();
  //Call the functions for the rocketship and fire
  fireballs.add(new Fire(setupfloat));
  //Display the rocketship
  r.display();
  //Update the rotation of the rocketship every frame
  r.update();
  //Updates all fireballs for the functions
  for (int i = 0; i < fireballs.size (); i++) {
    f = fireballs.get(i);
    f.fade();
    f.display();
    f.move();
    if (f.fadecheck()) {
      fireballs.remove(i);
    }
  }
  //print(fireballs.size(), "\n");
}

