int[][] random_spaced(int n, int canvas_width, int canvas_height) { // I don't know if this works. I still have to test it.
  int[] x = new int[n];
  int[] y = new int[n];
  
  for (int i = 0; i < n; i++) {
    int x1, y1;
    int j = 0;
    float dist = canvas_width * canvas_height;
    
    do {
      x1 = int(floor(random(canvas_width * 0.8)) + (0.1 * canvas_width));
      y1 = int(floor(random(canvas_height * 0.8)) + (0.1 * canvas_width));
      
      for (int k = 0; k < x.length; k++) {
        float temp = pow(pow(float(x[k]), 2) + pow(float(y[k]), 2), 0.5);
        if (temp < dist)
          dist = temp;
      }
    } while (dist <= (pow((canvas_width * canvas_height), 0.5) / n) && (j++ < 16384));
    
    x[i] = x1;
    y[i] = y1;
  }
  
  for (int i = 0; i < x.length; i++) {
    if (x[i] + y[i] != 0)
      point(x[i], y[i]);
  }
  
  int[][] temp = {x, y};
  return temp;
}


void setup() {
  size(1280, 720);
  frameRate(60);
  
  println(pow((1280 * 720), 0.5) / 4);
}

void mouseClicked() {
  background(0);
  
  line(0.1 * 1280, 0, 0.1 * 1280, 720);
  line(0.9 * 1280, 0, 0.9 * 1280, 720);
  line(0.1 * 720, 0, 0.1 * 720, 1280);
  line(0.9 * 720, 0, 0.9 * 720, 1280);
  
  int[][] temp = random_spaced(4, 1280, 720);
  
  stroke(255);
  strokeWeight(10);
  
  for (int i = 0; i < temp[0].length; i++) {
    point(temp[0][i], temp[1][i]);
  }
}

void draw() {
  
}
