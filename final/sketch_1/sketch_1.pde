// this program draws a rectangle to the center of the screen.
// as shown in the gif, use map() and other means to use the mouse
// position to change attributes of the rectangle. 

// when mouseY is at height, the rectangle should be the width 
// and height of the screen.

// when mouseX is at 0, the rect should be red. when mouseX
// is at width, it should be blue.

// moving the mouse from the left to the right side of the screen
// should result in the rectangle doing one full rotation (360 degrees).


void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255);
  
  pushMatrix();
  translate(width/2, height/2);
  // add a mapped rotation here
  
  // map the value of s here
  float s = 100;
  
  rotate(map(mouseX,0,width,0,radians(360)));
  
  // map the color here (hint try using either lerpColor or HSB color mode)
  float red = map(mouseX, 0, width, 255, 0);
  float blue = map(mouseX, 0, width, 0, 255);
  fill(red,0,blue);
  rect(0, 0, mouseY, mouseY);
  popMatrix();
}  
