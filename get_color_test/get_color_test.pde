void setup() {
  size(800, 800);
  noStroke();
}

void draw() {
  background(0);
  
  fill(255);
  
  ellipse(400, 400, 50, 50);
  
  if (get(mouseX, mouseY) == color(255)) {
    fill(0, 255, 0);
    
    ellipse(400, 400, 50, 50);
  }
}
