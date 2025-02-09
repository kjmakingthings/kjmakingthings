// import libraries for saving as a PDF and turtle
import processing.pdf.*;
import Turtle.*;
Turtle t = new Turtle(this);

// ------------------------------------------------------------------------------------------------------------------------

void setup() {
   beginRecord(PDF, "cactusPlant.pdf");
   size(800, 800);
   background(0);
   stroke(255);
   strokeWeight(1);
   noLoop();
   noFill();
}

// ------------------------------------------------------------------------------------------------------------------------

// write method with turtle to create a 6-pronged cactus spike at varying angles and lengths

void drawCactusSpikes() {
  for (int i = 0; i < 2; i++) {
    t.push();       // save the current state
    t.right(random(1,120));
    t.forward(random(20, 40));
    t.pop();        // return to the previously saved state
    t.push();
    t.right(random(121,240));
    t.forward(random(20, 40));
    t.pop(); 
    t.push();
    t.right(random(241,360));
    t.forward(random(20, 40));
    t.pop();
  }
}

// ------------------------------------------------------------------------------------------------------------------------

// call the draw method to create the design
void draw() {

// draw cactus vertical lines
  line(350, 800, 350, 25);
  line(450, 800, 450, 8);
  line(550, 800, 550, 55);

// draw the cactus body
  // left side base
  t.setX(width/3);
  t.setY(height);
  t.forward(height/3);
  t.left(90);
  t.forward(100);
  
  // upcurve and height of the left arm
  for (int i = 0; i < 90; i++) {
  t.right(1);
  t.forward(1);
  }
  t.forward(100);
  
  // rounded top and down-height of left arm
  for (int i = 0; i < 180; i++) {
  t.right(1);
  t.forward(1);
  }

  // rounded upcurve pocket of left arm and left side height
  for (int i = 0; i < 180; i++) {
  t.left(1);
  t.forward(.3);
  }
  t.forward(200);

  // rounded top of cactus and down-left of right side body
  for (int i = 0; i < 180; i++) {
  t.right(1);
  t.forward(3);
  }
  t.forward(300);

  // rounded upcurve pocket of right arm and right arm height
  for (int i = 0; i < 180; i++) {
  t.left(1);
  t.forward(.2);
  }
  t.forward(50);

  // rounded top and down-height of right arm
  for (int i = 0; i < 180; i++) {
  t.right(1);
  t.forward(1);
  }
  t.forward(150);

  // rounded bottom curve of right arm
  for (int i = 0; i < 90; i++) {
  t.right(1);
  t.forward(1);
  }
  t.forward(70);
  
  //right side base
  t.left(90);
  t.forward(180);
 
// create first pillar spikes of spikes by setting x, y coordinate and calling method to generate cactus spikes
    t.setX((width/2) - 90);
    t.setY(height - 50);
    drawCactusSpikes();

    t.setX((width/2) - 90);
    t.setY(height - 200);
    drawCactusSpikes();

    t.setX((width/2) - 90);
    t.setY(height - 350);
    drawCactusSpikes();

    t.setX((width/2) - 90);
    t.setY(height - 500);
    drawCactusSpikes();
 
    t.setX((width/2) - 90);
    t.setY(height - 700);
    drawCactusSpikes();

// create second pillar spikes of spikes by setting x, y coordinate and calling method to generate cactus spikes
    t.setX(width/2);
    t.setY(height - 50);
    drawCactusSpikes();

    t.setX(width/2);
    t.setY(height - 200);
    drawCactusSpikes();

    t.setX(width/2);
    t.setY(height - 350);
    drawCactusSpikes();

    t.setX(width/2);
    t.setY(height - 500);
    drawCactusSpikes();
 
    t.setX(width/2);
    t.setY(height - 700);
    drawCactusSpikes();

// create third pillar spikes of spikes by setting x, y coordinate and calling method to generate cactus spikes
    t.setX(width/2 + 90);
    t.setY(height - 50);
    drawCactusSpikes();

    t.setX(width/2 + 90);
    t.setY(height - 200);
    drawCactusSpikes();

    t.setX(width/2 + 90);
    t.setY(height - 350);
    drawCactusSpikes();

    t.setX(width/2 + 90);
    t.setY(height - 500);
    drawCactusSpikes();
 
    t.setX(width/2 + 90);
    t.setY(height - 700);
    drawCactusSpikes();

// create fourth pillar spikes of spikes by setting x, y coordinate and calling method to generate cactus spikes
    t.setX(width/2 + 180);
    t.setY(height - 50);
    drawCactusSpikes();

    t.setX(width/2 + 180);
    t.setY(height - 200);
    drawCactusSpikes();

    t.setX(width/2 + 180);
    t.setY(height - 350);
    drawCactusSpikes();

    t.setX(width/2 + 180);
    t.setY(height - 500);
    drawCactusSpikes();
 
    t.setX(width/2 + 170);
    t.setY(height - 700);
    drawCactusSpikes();
    
 // method to save as PDF  
    endRecord();
}
