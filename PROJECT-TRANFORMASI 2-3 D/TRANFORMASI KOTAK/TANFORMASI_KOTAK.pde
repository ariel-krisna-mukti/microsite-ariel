float angleX = 0;
float angleY = 0;
float angleZ = 0;
float scaleFactor = 1;
boolean increasing = true;

void setup() {
  size(800, 600, P3D); // Mengatur ukuran jendela dan mode 3D
}

void draw() {
  background(135, 206, 235); // Warna latar belakang langit biru
  lights(); // Mengaktifkan pencahayaan

  // Mengatur posisi asal koordinat ke tengah layar
  translate(width / 2, height / 2, 0);

  // Animasi rotasi dan skala
  angleX += 0.01;
  angleY += 0.01;
  angleZ += 0.01;

  if (increasing) {
    scaleFactor += 0.01;
    if (scaleFactor > 1.5) {
      increasing = false;
    }
  } else {
    scaleFactor -= 0.01;
    if (scaleFactor < 0.5) {
      increasing = true;
    }
  }

  // Menggambar objek yang ditransformasikan
  drawTransformedObject();
}

void drawTransformedObject() {
  pushMatrix();

  // Translasi
  translate(-100, 0, 0);
  // Rotasi
  rotateX(angleX);
  rotateY(angleY);
  rotateZ(angleZ);
  // Skala
  scale(scaleFactor);

  // Menggambar kubus
  fill(255, 0, 0); // Warna merah
  box(50);

  popMatrix();

  pushMatrix();

  // Translasi
  translate(100, 0, 0);
  // Rotasi
  rotateX(angleX);
  rotateY(angleY);
  rotateZ(angleZ);
  // Skala
  scale(scaleFactor);

  // Menggambar bola
  fill(0, 255, 0); // Warna hijau
  sphere(30);

  popMatrix();

  pushMatrix();

  // Translasi
  translate(0, 0, -100);
  // Rotasi
  rotateX(angleX);
  rotateY(angleY);
  rotateZ(angleZ);
  // Skala
  scale(scaleFactor);

  // Menggambar kerucut (menggunakan vertex)
  fill(0, 0, 255); // Warna biru
  drawCone(30, 60);

  popMatrix();
}

void drawCone(float r, float h) {
  beginShape(TRIANGLE_FAN);
  vertex(0, -h/2, 0);
  for (float angle = 0; angle <= TWO_PI; angle += PI / 12) {
    float x = r * cos(angle);
    float y = r * sin(angle);
    vertex(x, h/2, y);
  }
  endShape(CLOSE);
}
