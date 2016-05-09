// The Mover class will let us learn about vectors and simluating
// more interesting forms of motion.
//
// Progression:
// 1. Motion 101 – location and velocity
// 2. Motion w/ Acceleration (Constant)

class Bricks {


  RVector location;
  

  Bricks() {


    location = new RVector(0, 0);
  }

  
  // update position
  void update() {

  }

  // show the object
  void display() {

    stroke(0);    // black border
    fill(0);    // light gray fill

    // draw the mover
    rect((float)location.x, (float)location.y, 50.0, 5.0);
  }

  // wrap around edges
  void checkEdges() {
  }
}