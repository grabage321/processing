/*

Messy hair don't care

(And by hair I mean code)
/*

Messy hair don't care

(And by hair I mean code)

*/
int cw = 1280; // Canvas width
int ch = 720; // Canvas height

int res = 200; // The number of subdivisions in the t step, AKA the "resolution" of the Bezier curve

int anim_max = 180; // Frames per curve
int anim_index = 0; // A number that does something
int anim_pause = 30; // Pause frames
int anim_pause_i = 0; // Another number that does something


Segment[] segs; // List that holds all segments



void setup() {
  size(1280, 720); // Width and height again because I'm stupid and can't figure out what order the variables are initialized in
  
  Point p1 = new Point((cw / 2) - 300, (ch / 2) + 300);
  Point p2 = new Point((cw / 2) - 150, (ch / 2) - 200);
  Point p3 = new Point((cw / 2) + 150, (ch / 2) + 200);
  Point p4 = new Point((cw / 2) + 300, (ch / 2) - 300);
  Point[] ptest = new Point[4];
  ptest[0] = p1;
  ptest[1] = p2;
  ptest[2] = p3;
  ptest[3] = p4;
  
  segs = new Segment[1];
  segs[0] = new Segment(ptest);
  //segs[0] = generate_segment(4);
  
  //println(segs.length);
}



void draw() {
  background(0);
  
  float[] draw_x = {};
  float[] draw_y = {};
  
  
  if (anim_index < anim_max) {
    anim_index++;
  } else if (anim_index == anim_max && anim_pause_i < anim_pause) {
    anim_pause_i++;
  } else {
    anim_index = 0;
    anim_pause_i = 0;
  }
  
  
  /*  Draw the control points and lines between them  */
  for (int i = 0; i < segs.length; i++) {
    for (int j = 0; j < segs[i].p.length; j++) {
      if (!segs[i].p[j].held) // Draw ellipse on the current point (color changes based on whether it's being held by the mouse or not)
        fill(0, 255, 0);
      else
        fill(128, 128, 0);
      noStroke();
      ellipse(segs[i].p[j].x, segs[i].p[j].y, 8, 8);
      
      
      if (j != segs[i].p.length - 1) { // Draws lines from the current point to the next
        float x1 = segs[i].p[j].x;
        float x2 = segs[i].p[j + 1].x;
        float y1 = segs[i].p[j].y;
        float y2 = segs[i].p[j + 1].y;
        
        strokeWeight(2);
        colorMode(HSB, 360, 100, 100); // Switch color mode to HSB for the line color so that it's consistent with the recursively drawn ones
        
        stroke(0, 100, 90);
        line (x1, y1, x2, y2);
        
        colorMode(RGB, 255, 255, 255);
      }
    }
  }
  
  
  /*  Run the Bezier stuff (and can also draw the approximated points)  */
  for (int i = 0; i <= res; i++) {
    float a = (float(anim_index) / anim_max);
    float t = (float(i) / res) * a;
    
    for (int j = 0; j < segs.length; j++) {  
      float[] temp = draw_bezier(segs[j].p, t, a, 0);
      
      draw_x = append(draw_x, temp[0]);
      draw_y = append(draw_y, temp[1]);
    }
  }
  
  /*  Draw lines between the approximated points  */
  strokeWeight(3);
  stroke(255);
  for (int i = 0; i < draw_x.length - 1; i++) {
    float x1 = draw_x[i];
    float x2 = draw_x[i + 1];
    float y1 = draw_y[i];
    float y2 = draw_y[i + 1];
    
    line(x1, y1, x2, y2);
  }
}
