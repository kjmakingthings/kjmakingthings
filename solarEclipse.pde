// import libraries for saving as a PDF and turtle
import processing.pdf.*;
import Turtle.*;
Turtle t = new Turtle(this);

// ------------------------------------------------------------------------------------------------------------------------

// intial code set up 
void setup() {
   beginRecord(PDF, "solarEclipse.pdf");
   size(800, 800);
   background(0);
   stroke(255);
   strokeWeight(1);
   noLoop();
   noFill();
}

// ------------------------------------------------------------------------------------------------------------------------

// call the draw method to create the design

void draw() { 
  t.setX(150); // set starting x coordinate
  t.setY(250); // set starting y coordinate
  for (int i = 0; i < 60; i++) { //for loop to iterate 60 times
  t.right(61); // turn turtle right by 61 degrees
  t.forward(300); // move turtle forward by 300 pixels
  }

// method to save as PDF
  endRecord();
}
