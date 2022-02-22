package javaTest2;

import processing.core.*;

public class JavaTest extends PApplet {
	
	public static void main(String[] args) { PApplet.main("JavaTest"); }
	
	public void settings() { size(800, 600); }
	
	public void setup() { background(0); }
	
	public void draw() {
		fill(255);
		rect(200, 200, 20, 20);
	}
	
}
