int armAngle = 0;
int legAngle = 0;
int angleChange = 5;
final int ANGLE_LIMIT = 135;

void setup() {
  size(400, 400);
  smooth();
  frameRate(30);
}

void draw() {
  background(255);
  pushMatrix();
 translate(width/2 -35,height/2 -60); 
  drawRobot();
  armAngle += angleChange;
  legAngle += angleChange;

  // If the arm has moved past its limit, reverse direction and set within limits.
  if (armAngle > ANGLE_LIMIT || armAngle < 0) {
    angleChange = -angleChange;
    armAngle += angleChange;
    legAngle += angleChange;
  }
  popMatrix();
}

void drawRobot() {
  noStroke();
  fill(255, 0, 0);
  rect(20, 0, 38, 30); // head
  rect(14, 32, 50, 50); // body
  drawLeftArm();
  drawRightArm();
  drawLeftLeg();
  drawRightLeg();

  fill(222, 222, 249);
  ellipse(30, 12, 12, 12); // left eye
  ellipse(47, 12, 12, 12);  // right eye
}

void drawLeftArm() {
  pushMatrix();
  translate(12, 32);
  rotate(radians(armAngle));
  rect(-12, 0, 12, 37); // left arm
  popMatrix();
}

void drawRightArm() {
  pushMatrix();
  translate(66, 32);
  rotate(radians(-armAngle));
  rect(0, 0, 12, 37); // right arm
  popMatrix();
}

void drawLeftLeg() {
  pushMatrix();
  translate(22, 84);
  rotate(radians(legAngle));
  rect(-12, 0, 16, 50); // left leg
  popMatrix();
}

void drawRightLeg() {
  pushMatrix();
  translate(40, 84);
  rotate(radians(-legAngle));
  rect(0, 0, 16, 50); // right leg
  popMatrix();
}
