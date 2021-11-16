void do_thing() {
  background (0, 128, 0);
  
   x = new int[700];
   y = new int[700];

  noStroke();
  fill(4);
  
  for (int i = 0; i < 700; i++) { // Thanks, Arthur
    //x[i] = int(floor(random(1200)));
    //y[i] = int(floor(random(1200)));
    
    int x1, y1;
    int j = 0;
    
    do {
      x1 = int(floor(random(1200)));
      y1 = int(floor(random(1200)));
    } while ((get(x1, y1) == color(4)) && (j++ < tries_limit));
    
    if (j < tries_limit) {
      x[i] = x1;
      y[i] = y1;
      
      ellipse(x1, y1, space, space);
    }
  }
  
  
  background (0);
  
  int drawn = 0;
  
  for (int i = 0; i < x.length; i++) {
    if (x[i] + y[i] != 0) {
      strokeWeight(1);
      stroke(255, 0, 0);
      ellipse(x[i], y[i], space / 2, space / 2);
      
      strokeWeight(4);
      stroke(255);
      point(x[i], y[i]);
      
      drawn++;
    }
  }
  
  println(700 - drawn + " points skipped this run");
  
  skipped_count = append(skipped_count, 700 - drawn);
  skipped_avg = 0;
  
  for (int i = 1; i < skipped_count.length; i++) {
    skipped_avg += float(skipped_count[i]) / skipped_count.length;
  }
  
  println(skipped_avg + " poins skipped on average\n");
}
