// import libraries for saving as a PDF and turtle
import processing.pdf.*;
import Turtle.*;
Turtle t = new Turtle(this);

// ------------------------------------------------------------------------------------------------------------------------

// intial code set up 
void setup() {
   beginRecord(PDF, "drawCircle.pdf");
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
  t.setX(width/2 - 200);
  t.setY(height-400);
  for (int i = 0; i < 360; i++) {
  t.right(1);
  t.forward(4);
  }
  
// method to save as PDF
  endRecord();
}
