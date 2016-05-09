// The Mover class will let us learn about vectors and simluating
// more interesting forms of motion.
//
// Progression:
// 1. Motion 101 – location and velocity
// 2. Motion w/ Acceleration (Constant)
//    Velocity - rate of change of location
//    Acceleration – rate of change of velocity
//    Acceleration affects velocity; velocity in turn affects location.
// 3. Motion w/ Acceleration (Random)
// 4. Motion w/ Acceleration (Toward the mouse)
class Mover {

  // Declare properties of the class here
  // They are in-scope (accessible) to all methods below
  RVector location;
  RVector velocity;
  RVector acceleration;

  // Constructor – use this to initialize a Mover instance
  Mover() {

    // Movers appear in centre of window and have zero velocity at first
    location = new RVector(width/2, height-8);
    velocity = new RVector(1, 0);  // object at rest when instantiated
  }

  // Behaviour
  // Add additional methods to implement Mover object behaviour below.

  // update position
  void update() {

    // Determine the direction vector that points to the mouse from our current location
    RVector mouse = new RVector(mouseX, mouseY);
    RVector direction = RVector.sub(mouse, location);


    // modify velocity based on location
    if (location.x + 50 > width) {     // right edge
      velocity.x *= -1;
    } else if (location.x < 0) {  // left edge
      velocity.x *= -1;
    }
    location.add(velocity);
  }

  // show the object
  void display() {

    stroke(0);    // black border
    fill(255);    // light gray fill

    // draw the mover
    rect((float)location.x, (float)location.y, 50.0, 5.0);
  }

  // wrap around edges
  void checkEdges() {
    
  }

 
}