/*

Messy hair don't care

(And by hair I mean code)
Expand
message.txt
4 KB
﻿
```
/*

Messy hair don't care

(And by hair I mean code)

*/
int cw = 1280; // Canvas width
int ch = 720; // Canvas height

int res = 200; // The number of subdivisions in the t step, AKA the "resolution" of the Bezier curve
int respos = 0; // A number used to control the resolution. Follows the formula res = 10 ^ (0.04 * respos).

int anim_max = 180; // Frames per curve
int anim_index = 0; // A number that does something
int anim_pause = 30; // Pause frames
int anim_pause_i = 0; // Another number that does something


void setup() {
  size(1280, 720); // Width and height again because I'm stupid and can't figure out what order the variables are initialized in
  
  Point p1 = new Point((cw / 2) - 300, (ch / 2) + 300);
  Point p2 = new Point((cw / 2) - 150, (ch / 2) - 200);
  Point p3 = new Point((cw / 2) + 150, (ch / 2) + 200);
  Point p4 = new Point((cw / 2) + 300, (ch / 2) - 300);
  ptest = new Point[4];
  ptest[0] = p1;
  ptest[1] = p2;
  ptest[2] = p3;
  ptest[3] = p4;
  
  segs = new Segment[1];
  Segment s1 = new Segment(ptest);
  segs[0] = s1;
  
  //println(segs.length);
}

void mouseWheel(MouseEvent event) {
  if (respos < 50 && event.getCount() <= -1) {
    respos -= event.getCount();
  } else if (respos > -10 && event.getCount() >= 1) {
    respos -= event.getCount();
  }
}

void draw() {
  background(0);
  
  float[] draw_x = {};
  float[] draw_y = {};
  
  //res = round(10 * pow(10, 0.04 * respos));
  
  if (anim_index < anim_max) {
    anim_index++;
  } else if (anim_index == anim_max && anim_pause_i < anim_pause) {
    anim_pause_i++;
  } else {
    anim_index = 0;
    anim_pause_i = 0;
  }
  
  
  /*  Draws the control points  */
  for (int i = 0; i < segs.length; i++) {
    for (int j = 0; j < segs[i].p.length; j++) {
      strokeWeight(0);
      fill(0, 255, 0);
      ellipse(segs[i].p[j].x, segs[i].p[j].y, 8, 8);
      
      if (j != segs[i].p.length - 1) {
        float x1 = segs[i].p[j].x;
        float x2 = segs[i].p[j + 1].x;
        float y1 = segs[i].p[j].y;
        float y2 = segs[i].p[j + 1].y;
        
        strokeWeight(2);
        stroke(128, 128, 255);
        line (x1, y1, x2, y2);
      }
    }
  }
  
  
  /*  Runs the Bezier stuff (and can also draw the approximated points)  */
  for (int i = 0; i <= res; i++) {
    float t = (float(i) / res) * (float(anim_index) / anim_max);
    
    for (int j = 0; j < segs.length; j++) {  
      float[] temp = draw_bezier(segs[j].p, t, (float(anim_index) / anim_max));
      
      draw_x = append(draw_x, temp[0]);
      draw_y = append(draw_y, temp[1]);
    }
  }
  
  /*  Draws lines between the approximated points  */
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
