// import libraries for saving as a PDF and turtle
import processing.pdf.*;
import Turtle.*;
Turtle t = new Turtle(this);

// ------------------------------------------------------------------------------------------------------------------------

// intial code set up 
void setup() {
   beginRecord(PDF, "drawTriangle.pdf");
   size(800, 800);
   background(0);
   stroke(255);
   strokeWeight(5);
   noLoop();
   noFill();
}

// ------------------------------------------------------------------------------------------------------------------------

// call the draw method to create the design
void draw() {
  t.setX(width/2);
  t.setY(height-100);
  t.left(90);
  t.forward(300);
  t.right(1200);
  t.forward(600);
  t.right(120);
  t.forward(600);
  t.right(120);
  t.forward(300);

// method to save as PDF
  endRecord();
}
