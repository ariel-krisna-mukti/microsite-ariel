void setup() {
  size(800, 600);
  background(135, 206, 235); // Sky blue background

  // Ground
  fill(34, 139, 34); // Green color
  rect(0, height/2, width, height/2);

  // Main building structure
  fill(245, 245, 220); // Beige color
  rect(200, 200, 250, 300);
  
  // Roof
  fill(139, 69, 19); // Brown color
  triangle(200, 200, 450, 200, 325, 100);
  
  // Windows
  fill(255, 255, 255); // White color
  rect(230, 250, 50, 50);
  rect(370, 250, 50, 50);
  rect(230, 320, 50, 50);
  rect(370, 320, 50, 50);
  
  // Door
  fill(139, 69, 19); // Brown color
  rect(300, 400, 100, 100);

  // Balcony
  fill(169, 169, 169); // Grey color
  rect(450, 250, 100, 200);

  // Balcony railing
  stroke(0);
  line(450, 250, 550, 250);
  line(450, 300, 550, 300);
  line(450, 350, 550, 350);
  line(450, 400, 550, 400);

  // Cars
  fill(255, 165, 0); // Orange car
  rect(150, 480, 100, 50);
  fill(0);
  ellipse(170, 530, 20, 20);
  ellipse(230, 530, 20, 20);
  
  fill(0, 0, 255); // Blue car
  rect(300, 480, 100, 50);
  fill(0);
  ellipse(320, 530, 20, 20);
  ellipse(380, 530, 20, 20);
}

void draw() {
  // No need to draw anything continuously
}
