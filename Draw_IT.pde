// import libraries for saving as a PDF and turtle
import processing.pdf.*;
import Turtle.*;
Turtle t = new Turtle(this);

// ------------------------------------------------------------------------------------------------------------------------

void setup() {
   // set up code
   beginRecord(PDF, "drawIT.pdf");
   size(800, 800);
   background(0);
   stroke(255);
   strokeWeight(3);
   noLoop();
   noFill();
}

// ------------------------------------------------------------------------------------------------------------------------

// call the draw method to create the design
void draw() {
  // draw capital I
  t.setX(width/3-100); // set starting x coordinate
  t.setY(height - 100); // set starting y coordinate
  t.push();
  t.left(90);
  t.forward(50);
  t.pop();
  t.right(90);
  t.push();
  t.forward(50);
  t.pop();
  t.left(90);
  t.forward(300);
  t.push();
  t.left(90);
  t.forward(50);
  t.pop();
  t.right(90);
  t.forward(50);
  t.penUp();
  
  // draw capital T
  t.left(90);
  t.penDown();
  t.setX((width/3) + 100); // set starting x coordinate
  t.setY(height - 100); // set starting y coordinate
  t.forward(300);
  t.push();
  t.left(90);
  t.forward(50);
  t.pop();
  t.right(90);
  t.forward(50);
  
 // method to save as PDF
  endRecord();
}
