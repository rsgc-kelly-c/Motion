// Create a space in memory for many Mover objects
Bouncer ball;
Mover baseBrick;
Bricks brick[];
RVector factor = new RVector(10, 10);
// Runs once
void setup() {

  // Create a white background
  size(640, 360);
  background(255);


  // Actually make an instance of a Mover
  ball = new Bouncer();
  baseBrick = new Mover();
}

// Runs forever
void draw() {

  // Clear the background
  background(255);

  // Make the mover move!

  baseBrick.update();
  baseBrick.checkEdges();
  baseBrick.display();
  ball.update();
  ball.display();
  ball.checkEdges();
  
  //for (int i=0; i<20; i++) {
  //  brick[i] = new Bricks();
  //  brick[i].location.add(factor);
  //  factor.add(factor);
  //  brick[i].display();
  //}
  
}