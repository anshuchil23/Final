// this code draws an system where one ellipse rotates around another.
// replace this drawing code with a function that can be used to 
// draw the system repeatedly, like "drawSystem()". It should
// take arguments that allow parameters of the system to be customized,
// like the distance between each ellipse, the speed of rotation, and 
// the size of the ellipses.
// use your function to draw the system multiple times in the sketch
// as seen in the example gif.

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  //pushMatrix();
  //translate(width/2, height/2);
  //rotate(frameCount * 0.05);
  //ellipse(0, 0, 100, 100);

  //pushMatrix();
  //translate(150, 0);
  //ellipse(0, 0, 50, 50);
  //popMatrix();
  
  //popMatrix();
  drawSystem(mouseX, height/2, 100, 20, mouseY);
  drawSystem(25, 300, 200, 50, 20);
  drawSystem(500, 25, 100, 40, 10);
}

void drawSystem(float x, float y, float size, float speed, float space){
 pushMatrix();
 translate(x,y);
 rotate(frameCount *speed*0.01);
 ellipse(0,0,size,size);
 
 pushMatrix();
 translate(space+size, 0);
 ellipse(0,0,size/2, size/2);
 popMatrix();
 popMatrix();
 
}
