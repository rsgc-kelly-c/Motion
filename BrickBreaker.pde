// Create a space in memory for many Mover objects
Bouncer ball;
Mover baseBrick;
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
}