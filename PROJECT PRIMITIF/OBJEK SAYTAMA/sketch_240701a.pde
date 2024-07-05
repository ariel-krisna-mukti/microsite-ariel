void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  // Warna latar belakang
  background(255);
  
  // Warna tubuh ayam
  fill(255, 230, 0);
  stroke(0);
  
  // Kepala ayam
  ellipse(200, 200, 150, 150);
  
  // Mata ayam
  fill(0);
  ellipse(170, 180, 20, 20); // Mata kiri
  ellipse(230, 180, 20, 20); // Mata kanan
  
  // Paruh ayam
  fill(255, 165, 0);
  triangle(200, 210, 180, 250, 220, 250);
  
  // Jengger ayam
  fill(255, 0, 0);
  ellipse(200, 140, 30, 30); 
  ellipse(180, 150, 30, 30);
  ellipse(220, 150, 30, 30);
}
