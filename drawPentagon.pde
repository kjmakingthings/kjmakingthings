// import libraries for saving as a PDF and turtle
import processing.pdf.*;
import Turtle.*;
Turtle t = new Turtle(this);

// ------------------------------------------------------------------------------------------------------------------------

// intial code set up 
void setup() {
   beginRecord(PDF, "drawPentagon.pdf");
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
  // code here 
  t.setX(width/2);
  t.setY(height-100);
  t.left(90);
  t.forward(200);
  t.right(72);
  t.forward(400);
  t.right(72);
  t.forward(400);
  t.right(72);
  t.forward(400);
  t.right(72);
  t.forward(400);
  t.right(72);
  t.forward(200);
  
// method to save as PDF
  endRecord();
}
