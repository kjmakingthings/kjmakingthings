// import libraries for saving as a PDF and turtle
import processing.pdf.*;
import Turtle.*;
Turtle t = new Turtle(this);

// ------------------------------------------------------------------------------------------------------------------------

// intial code set up 
void setup() {
   beginRecord(PDF, "aspenEyesLines.pdf");
   size(800, 800);
   background(0);
   stroke(255);
   strokeWeight(1);
   noLoop();
   noFill(); 
}

// ------------------------------------------------------------------------------------------------------------------------

// write method for the small eye design with 2 arcs that join and 2 input parameters for setting x, y coordinates
void drawSmallEye(int smallEyeX, int smallEyeY){
 arc(smallEyeX, smallEyeY, 50, 50, PI, TWO_PI);
 arc(smallEyeX, smallEyeY, 50, 30, 0, PI);
}

// write method for the tall eye design with 2 arcs that join and 2 input parameters for setting x, y coordinates
void drawTallEye(int tallEyeX, int tallEyeY){
 arc(tallEyeX, tallEyeY, 60, 250, PI, TWO_PI);
 arc(tallEyeX, tallEyeY, 60, 30, 0, PI);
}

// write method for the tall eye design with 2 arcs that join and 2 input parameters for setting x, y coordinates
void drawWideEye(int wideEyeX, int wideEyeY){
 arc(wideEyeX, wideEyeY, 80, 150, PI, TWO_PI);
 arc(wideEyeX, wideEyeY, 80, 60, 0, PI);
}

// ------------------------------------------------------------------------------------------------------------------------

// call the draw method to create the design
void draw() {
 //  draw 3 evenly-spaced vertical lines
  line(width/3, 800, width/3, 0);
  line((width/3 + (width/3)), 800, ((width/3 + (width/3))), 0);
  
 //  draw 3 evenly-space horizontal lines with turtles
 t.setX(0);
 t.setY(height/3);
 t.right(90);
 t.forward(width/3);
 t.penUp();
 t.forward(width/3);
 t.penDown();
 t.forward(width/3);
 t.right(90);
 t.penUp();
 t.forward(height/3);
 t.right(90);
 t.forward(width/3);
 t.penDown();
 t.forward(width/3);
 t.penUp();

 // draw the aspen eyes in the longer rectangles
    // first long rectangle to contain assortment of eye sizes, shapes at specific coordinates.
    drawSmallEye(100, 350);
    drawSmallEye(100, 575);
    drawTallEye(200, 600);
    drawTallEye(100, 750);
    drawWideEye(100, 475);
    drawWideEye(190, 400);
    drawWideEye(200, 725);

    // second long rectangle to contain assortment of eye sizes, shapes at specific coordinates.
    drawSmallEye(360, 90);
    drawSmallEye(360, 315);
    drawTallEye(460, 340);
    drawTallEye(360, 490);
    drawWideEye(360, 215);
    drawWideEye(450, 140);
    drawWideEye(460, 465);
    
    // third long rectangle to contain assortment of eye sizes, shapes at specific coordinates.
    drawSmallEye(630, 350);
    drawSmallEye(630, 575);
    drawTallEye(730, 600);
    drawTallEye(630, 750);
    drawWideEye(630, 475);
    drawWideEye(720, 400);
    drawWideEye(730, 725);
    
 // draw the aspen eyes in the shorter rectangles
    // first short rectangle to contain assortment of eye sizes, shapes at specific coordinates.
    drawSmallEye(100, 200);
    drawTallEye(200,200);
    drawWideEye(100,100);

    // second short rectangle to contain assortment of eye sizes, shapes at specific coordinates.
    drawSmallEye(360, 730);
    drawTallEye(460,730);
    drawWideEye(360, 630);

    // third short rectangle to contain assortment of eye sizes, shapes at specific coordinates.
    drawSmallEye(630, 200);
    drawTallEye(730,200);
    drawWideEye(630,100);
    
 // method to save as PDF
  endRecord();
}
