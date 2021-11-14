class Point { // Structure used to store point positions
  float x; // x coordinate
  float y; // y coordinate
  boolean held; // Stores whether the point is currently being "held" by the user or not
  
  // CONSTRUCTOR
  Point(float init_x, float init_y) { // Point([some x value], [some y value]) will assign these values to the point's coordinates
    x = init_x;
    y = init_y;
  }
}



class Segment {
  Point[] p; // Array of points for the defined segment. The first and last points will be used as endpoints, with the points in between being used as control points.
  
  // CONSTRUCTOR
  Segment(Point[] init_p) {
    p = init_p; //Uhhh
  }
}
