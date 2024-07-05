/**
* Arctangent. 
* 
* Move the mouse to change the direction of the eyes. 
* The atan2() function computes the angle from each eye 
* to the cursor. 
*/

Eye e1, e2, e3;

void setup() {
  size(1000, 1000);
  noStroke();
  e1 = new Eye( 630, 400, 100);
  
}

void draw() {
  background(50);
  fill(500, 270, 30); // Kuning  
  rect(500, 270, 270, 390, 300); // (x, y, lebar, tinggi, radius)
  rect(620, 100, 20, 200, 150); // (x, y, lebar, tinggi, radius)
  rect(630, 50, 20, 400, 150); // (x, y, lebar, tinggi, radius)
  fill(150, 10 , 0); // merah
   arc(630,520, 100, 100, 0, PI);
  e1.update(mouseX, mouseY);

  e1.display();

}

class Eye {
  int x, y;
  int size;
  float angle = 0.0;
  
  Eye(int tx, int ty, int ts) {
    x = tx;
    y = ty;
    size = ts;
}

  void update(int mx, int my) {
    angle = atan2(my-y, mx-x);
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    fill(255);
    ellipse(0, 0, size, size);
    rotate(angle);
    fill(153, 204, 0);
    ellipse(size/4, 0, size/2, size/2);
    popMatrix();
  }
}
