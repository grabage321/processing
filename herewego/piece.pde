static final int ghostAlpha = 96;

public enum displayColor {
  I(15, 155, 215),
  O(227, 159, 2),
  T(138, 41, 175),
  S(89, 177, 1),
  Z(215, 15, 55),
  J(33, 65, 198),
  L(227, 91, 2),
  GI(15, 155, 215, ghostAlpha),
  GO(227, 159, 2, ghostAlpha),
  GT(138, 41, 175, ghostAlpha),
  GS(89, 177, 1, ghostAlpha),
  GZ(215, 15, 55, ghostAlpha),
  GJ(33, 65, 198, ghostAlpha),
  GL(227, 91, 2, ghostAlpha);
  
  private final int r;
  private final int g;
  private final int b;
  private final int a;
  
  private displayColor(int r, int g, int b) {
    this.r = r;
    this.g = g;
    this.b = b;
    this.a = 255;
  }
  
  private displayColor(int r, int g, int b, int a) {
    this.r = r;
    this.g = g;
    this.b = b;
    this.a = a;
  }
  
  
  public int getR() {
    return this.r;
  }
  
  public int getG() {
    return this.g;
  }
  
  public int getB() {
    return this.b;
  }
  
  public int getA() {
    return this.a;
  }
}
