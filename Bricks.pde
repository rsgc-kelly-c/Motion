// The Mover class will let us learn about vectors and simluating
// more interesting forms of motion.
//
// Progression:
// 1. Motion 101 – location and velocity
// 2. Motion w/ Acceleration (Constant)
//    Velocity - rate of change of location
//    Acceleration – rate of change of velocity
//    Acceleration affects velocity; velocity in turn affects location.
// 3. Motion w/ Acceleration (Random)
// 4. Motion w/ Acceleration (Toward the mouse)
class Bricks {

  // Declare properties of the class here
  // They are in-scope (accessible) to all methods below
  RVector location;
  
  // Constructor – use this to initialize a Mover instance
  Bricks() {

    // Movers appear in centre of window and have zero velocity at first
    location = new RVector(10, 10);
  }

  // Behaviour
  // Add additional methods to implement Mover object behaviour below.

  // update position
  void update() {

  }

  // show the object
  void display() {

    stroke(0);    // black border
    fill(70);    // light gray fill

    // draw the mover
    rect((float)location.x, (float)location.y, 50.0, 5.0);
  }

  // wrap around edges
  void checkEdges() {
  }
}