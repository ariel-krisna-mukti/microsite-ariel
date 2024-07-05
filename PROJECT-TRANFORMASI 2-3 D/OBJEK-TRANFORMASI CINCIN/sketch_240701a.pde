float angleX = 0;
float angleY = 0;
int numSpheres = 12;
float[] sphereAngles = new float[numSpheres];
float torusRadius = 150;
float sphereRadius = 20;

void setup() {
  size(800, 600, P3D); // Mode P3D untuk grafik 3D
  noStroke();
  frameRate(30);
  
  // Inisialisasi sudut bola
  for (int i = 0; i < numSpheres; i++) {
    sphereAngles[i] = TWO_PI / numSpheres * i;
  }
}

void draw() {
  background(0);
  lights();
  
  // Menerapkan transformasi untuk torus
  pushMatrix();
  translate(width / 2, height / 2, 0);
  rotateX(angleX);
  rotateY(angleY);
  
  // Menggambar torus
  drawTorus(torusRadius, 40);
  
  // Menggambar bola yang mengelilingi torus
  for (int i = 0; i < numSpheres; i++) {
    float x = torusRadius * cos(sphereAngles[i]);
    float y = torusRadius * sin(sphereAngles[i]);
    pushMatrix();
    translate(x, y, 0);
    fill(255, 0, 0);
    sphere(sphereRadius);
    popMatrix();
  }
  
  popMatrix();
  
  // Mengupdate sudut untuk animasi
  angleX += 0.01;
  angleY += 0.02;
  
  // Mengupdate sudut bola untuk animasi
  for (int i = 0; i < numSpheres; i++) {
    sphereAngles[i] += 0.03;
  }
}

// Fungsi untuk menggambar torus
void drawTorus(float r1, float r2) {
  int numC = 100;
  int numT = 30;
  float phi = 0;
  float theta = 0;
  float phiInc = TWO_PI / numC;
  float thetaInc = TWO_PI / numT;
  beginShape(QUAD_STRIP);
  for (int i = 0; i <= numC; i++) {
    for (int j = 0; j <= numT; j++) {
      float x = (r1 + r2 * cos(theta)) * cos(phi);
      float y = (r1 + r2 * cos(theta)) * sin(phi);
      float z = r2 * sin(theta);
      vertex(x, y, z);
      x = (r1 + r2 * cos(theta + thetaInc)) * cos(phi);
      y = (r1 + r2 * cos(theta + thetaInc)) * sin(phi);
      z = r2 * sin(theta + thetaInc);
      vertex(x, y, z);
      theta += thetaInc;
    }
    phi += phiInc;
    theta = 0;
  }
  endShape();
}
