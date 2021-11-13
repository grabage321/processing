/*

Messy hair don't care

(And by hair I mean code)

*/

int cw = 1280; // Canvas width
int ch = 720; // Canvas height

void setup() {
  size(1280, 720);
}

int res;
int respos = 50;

class vert1 {
  float x = (cw / 2) - 160;
  float y = ch / 2;
  float cx = x + 30;
  float cy = y - 100;
}
vert1 v1 = new vert1();

class vert2 {
  float x = (cw / 2) + 160;
  float y = ch / 2;
  float cx = x - 30;
  float cy = y - 100;
}
vert2 v2 = new vert2();


boolean cl_v1 = false;
boolean cl_v2 = false;
boolean cl_c1 = false;
boolean cl_c2 = false;


void mouseWheel(MouseEvent event) {
  if (respos < 50 && event.getCount() <= -1) {
    respos -= event.getCount();
  } else if (respos > -10 && event.getCount() >= 1) {
    respos -= event.getCount();
  }
}

void draw() {
  background(0);
  
  res = round(10 * pow(10, 0.04 * respos));
  
  if (sqrt(((float(mouseX) - v1.cx) * (float(mouseX) - v1.cx)) + ((float(mouseY) - v1.cy) * (float(mouseY) - v1.cy))) <= 8 && mousePressed && !cl_c2 && !cl_v1 && !cl_v2) {
    cl_c1 = true;
  } else if (sqrt(((float(mouseX) - v2.cx) * (float(mouseX) - v2.cx)) + ((float(mouseY) - v2.cy) * (float(mouseY) - v2.cy))) <= 8 && mousePressed && !cl_c1 && !cl_v1 && !cl_v2) {
    cl_c2 = true;
  } else if (sqrt(((float(mouseX) - v1.x) * (float(mouseX) - v1.x)) + ((float(mouseY) - v1.y) * (float(mouseY) - v1.y))) <= 8 && mousePressed && !cl_c1 && !cl_c2 && !cl_v2) {
    cl_v1 = true;
  } else if (sqrt(((float(mouseX) - v2.x) * (float(mouseX) - v2.x)) + ((float(mouseY) - v2.y) * (float(mouseY) - v2.y))) <= 8 && mousePressed && !cl_c1 && !cl_c2 && !cl_v1) {
    cl_v2 = true;
  }
  
  if (!mousePressed) {
    cl_c1 = false;
    cl_c2 = false;
    cl_v1 = false;
    cl_v2 = false;
  }
  
  if (cl_c1) {
    v1.cx = float(mouseX);
    v1.cy = float(mouseY);
  } else if (cl_c2) {
    v2.cx = float(mouseX);
    v2.cy = float(mouseY);
  } else if (cl_v1) {
    float difx = v1.cx - v1.x;
    float dify = v1.cy - v1.y;
    
    v1.x = float(mouseX);
    v1.y = float(mouseY);
    v1.cx = float(mouseX) + difx;
    v1.cy = float(mouseY) + dify;
  } else if (cl_v2) {
    float difx = v2.cx - v2.x;
    float dify = v2.cy - v2.y;
    
    v2.x = float(mouseX);
    v2.y = float(mouseY);
    v2.cx = float(mouseX) + difx;
    v2.cy = float(mouseY) + dify;
  }
  
  strokeWeight(3);
  stroke(255, 255, 255, 255);
  float x = v1.x;
  float y = v1.y;
  float x_p;
  float y_p;
  
  float c1x = v1.x;
  float c1y = v1.y;
  float c2x = v1.cx;
  float c2y = v1.cy;
  float c3x = v2.cx;
  float c3y = v2.cy;
  
  float cc1x = v1.x;
  float cc1y = v1.y;
  float cc2x = v1.cx;
  float cc2y = v1.cy;
  
  
  for (int i = 0; i <= res; i++) {
    float t = float(i) / float(res);
    
    
    c1x = lerp(v1.x, v1.cx, t);
    c1y = lerp(v1.y, v1.cy, t);
    
    c2x = lerp(v1.cx, v2.cx, t);
    c2y = lerp(v1.cy, v2.cy, t);
    
    c3x = lerp(v2.cx, v2.x, t);
    c3y = lerp(v2.cy, v2.y, t);
    
    
    cc1x = lerp(c1x, c2x, t);
    cc1y = lerp(c1y, c2y, t);
    
    
    cc2x = lerp(c2x, c3x, t);
    cc2y = lerp(c2y, c3y, t);
    
    
    x_p = x;
    y_p = y;
    
    x = lerp(cc1x, cc2x, t);
    y = lerp(cc1y, cc2y, t);
    
    line(x_p, y_p, x, y);
  }
  
  stroke(180);
  fill(180);
  strokeWeight(2);
  
  line(v1.x, v1.y, v1.cx, v1.cy);
  line(v2.x, v2.y, v2.cx, v2.cy);
  
  //line(v1.cx, v1.cy, v2.cx, v2.cy);
  
  ellipse(v1.x, v1.y, 8, 8);
  ellipse(v2.x, v2.y, 8, 8);
  
  fill(0);
  ellipse(v1.cx, v1.cy, 8, 8);
  ellipse(v2.cx, v2.cy, 8, 8);
  
  fill(255);
  text(res, cw - 40, ch - 10);
}
