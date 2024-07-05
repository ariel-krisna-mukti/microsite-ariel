PImage img;
PImage[] babi1 = new PImage[37];
PImage[] monyet = new PImage[48];
int babi1X = 100;
int monyetX = 400;
float babiScale1 = 0.9; // Scale variable for the first gif
float babiScale2 = 1.2; // Scale variable for the second gif
float speed1 = 3; // Speed variable for the first gif
float speed2 = 3; // Speed variable for the second gif
float frameCounter1 = 0; // Frame counter for the first gif
float frameCounter2 = 0; // Frame counter for the second gif
int babi1YOffset = 100; // Offset to move the first gif (orang) down
int monyetYOffset = 50; // Offset to move the second gif (mobil) up

void setup() {
  size(1300, 800);
  smooth();
  img = loadImage("jalan.jpg");
  for (int i = 0; i < 37; i++) {
    babi1[i] = loadImage("orang (" + (i + 1) + ").gif");
  }
  for (int i = 0; i < 48; i++) {
    monyet[i] = loadImage("mobil (" + (i + 1) + ").gif"); // Replace with actual filenames for the second gif
  }
}

void draw() {
  image(img, 0, 0, width, height);
  
  // Draw the first gif (orang) with Y offset
  pushMatrix();
  scale(babiScale1);
  image(babi1[(int)frameCounter1 % 37], babi1X / babiScale1, (300 + babi1YOffset) / babiScale1); // Use frameCounter1 for the first gif
  popMatrix();
  
  // Draw the second gif (mobil) with Y offset
  pushMatrix();
  scale(babiScale2);
  image(monyet[(int)frameCounter2 % 48], monyetX / babiScale2, (400 - monyetYOffset) / babiScale2); // Use frameCounter2 for the second gif
  popMatrix();
  
  frameCounter1 += speed1; // Increment frameCounter1 by the speed1
  frameCounter2 += speed2; // Increment frameCounter2 by the speed2
  
  babi1X += 20;
  if (babi1X > width) {
    babi1X = -200;
  }
  
  monyetX -= 10; // Move the second gif (mobil) to the left
  if (monyetX < -1200) { // Restart from the right side of the screen
    monyetX = width;
  }
}
