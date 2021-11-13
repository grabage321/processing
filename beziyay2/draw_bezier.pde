float[] draw_bezier(Point[] in_p, float t, float a) {
  int l = in_p.length;
  
  if (l <= 2) {
    float x1 = in_p[0].x;
    float x2 = in_p[1].x;
    float y1 = in_p[0].y;
    float y2 = in_p[1].y;
    
    float x = lerp(x1, x2, t);
    float y = lerp(y1, y2, t);
    
    if (t >= a) {
      strokeWeight(2);
      stroke(128, 0, 0);
      line(x1, y1, x2, y2);
      
      strokeWeight(5);
      stroke(255, 0, 0);
      point(x, y);
    }
    
    float[] out = {x, y};
    return out;
  } else {
    Point[] in_p2 = new Point[l - 1];
    
    for (int i = 0; i < l - 1; i++) {
      float x1 = in_p[i].x;
      float x2 = in_p[i + 1].x;
      float y1 = in_p[i].y;
      float y2 = in_p[i + 1].y;
      
      float new_x = lerp(x1, x2, t);
      float new_y = lerp(y1, y2, t);
      
      if (t >= a) {
        strokeWeight(2);
        stroke(128, 0, 0);
        line(x1, y1, x2, y2);
      }
      
      Point point = new Point(new_x, new_y);
      in_p2[i] = point;
    }
    
    return draw_bezier(in_p2, t, a);
  }
}
