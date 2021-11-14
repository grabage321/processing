void random_spaced(int n, int canvas_width, int canvas_height) { // I don't know if this works. I still have to test it.
  int[] x = new int[n];
  int[] y = new int[n];
  
  for (int i = 0; i < n; i++) {
    int x1, y1;
    int j = 0;
    float dist = canvas_width * canvas_height;
    
    do {
      x1 = int(floor(random(canvas_width)));
      y1 = int(floor(random(canvas_height)));
      
      for (int k = 0; k < x.length; k++) {
        float temp = pow(pow(float(x[k]), 2) + pow(float(y[k]), 2), 0.5);
        if (temp < dist )
          dist = temp;
      }
    } while (dist <= (pow((canvas_width * canvas_height), 0.5) / n) && (j++ < 65536));
    
    x[i] = x1;
    y[i] = y1;
  }
  
  for (int i = 0; i < x.length; i++) {
    if (x[i] + y[i] != 0)
      point(x[i], y[i]);
  }
}
