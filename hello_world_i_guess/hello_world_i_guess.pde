size(800, 800);

int n = 320;
int s = 31;
int step = 15;
int x = 400 - n;
int y = 400 - (s * step) / 2;


for (int i = 0; i < n; i++) {
  int x1 = x;
  int y1 = y;
  
  int offset = round(random(20) - 10);
  
  x += 2;
  y += offset;
  
  for (int j = 0; j < s; j++) {
    int js = j * step;
    line(x1, y1 + js, x, y + js);
  }
}
