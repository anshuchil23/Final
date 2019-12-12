int num=20;
int num = 10;
//float[] xPos = new float [num];
//float[] yPos = new float [num];
//float[] ySpeed = new float [num];
//float[] fill = new float [num];
//float[] r = new float [num];
float[] xPos= new float[num];
int x;

void setup() {
  size(600, 600);

  // give the array values  
  //x = 30;

  for (int i=0; i<num; i++) {
    xPos[i]=30;
  }

  noStroke();
}

void draw() {
  background(50);
  //for (int i = 0; i < num; i++) {
  //  xPos[i] = r[i];
  //  yPos[i] = i;
  //  r[i] = 25;
  //  fill[i] = 55;
  //}
  for (int i = 0; i < num; i++) {
    float y = 30 + i * 60;

    // check to see if you should increment 
    // the value at each position in the array
    // and then draw at that position
    if (dist(mouseX, mouseY, xPos[i], y)<50) {
      xPos[i]+=2;
    }

    ellipse(xPos[i], y, 50, 50);
  }
}
