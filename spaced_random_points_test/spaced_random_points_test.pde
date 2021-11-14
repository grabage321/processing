void setup() {
  size(1200, 1200);
  background (0);
  frameRate(144);
}

int[] x;
int[] y;

int[] skipped_count = {0};
float skipped_avg;

int space = 80;
int tries_limit = 128;

void mouseClicked() {
  do_thing();
}

void draw() {
  //do_thing();
}
