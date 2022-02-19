import java.util.Map;

public static HashMap<String, Boolean> keys = new HashMap<>();
public static HashMap<String, Integer> keyDuration = new HashMap<>();



void keyPressed() {
  String keyString = String.valueOf(key).toLowerCase();
  
  if (keys.get(keyString) != null && keys.get(keyString)) {
    
  } else if (key == CODED) {
    keys.put(String.valueOf(keyCode), Boolean.TRUE);
  } else {
    keys.put(keyString, Boolean.TRUE);
  } 
}

void keyReleased() {
  keys.put(String.valueOf(key).toLowerCase(), Boolean.FALSE);
  keys.put(String.valueOf(keyCode), Boolean.FALSE);
}



//void keyInit() {
//  keys.put("q", Boolean.FALSE);
//  keys.put("w", Boolean.FALSE);
//  keys.put("a", Boolean.FALSE);
//  keys.put("s", Boolean.FALSE);
//  keys.put("d", Boolean.FALSE);
//  keys.put(" ", Boolean.FALSE);
//  keys.put("37", Boolean.FALSE);
//  keys.put("38", Boolean.FALSE);
//  keys.put("39", Boolean.FALSE);
//  keys.put("40", Boolean.FALSE);
//}



void keyTestDraw() {
  float keyWidth = 50;
  
  float keyOverlayX = 90;
  float keyOverlayY = 200;
  
  rectMode(CORNER);
  
  
  noStroke();
  fill(255);
  if (keys.get("q") != null && keys.get("q")) {
    rect(keyOverlayX, keyOverlayY, keyWidth - 2, keyWidth - 2);
  }
  if (keys.get("w") != null && keys.get("w")) {
    rect(keyOverlayX + keyWidth, keyOverlayY, keyWidth  - 2, keyWidth - 2);
  }
  if (keys.get("a") != null && keys.get("a")) {
    rect(keyOverlayX, keyOverlayY + keyWidth, keyWidth - 2, keyWidth - 2);
  }
  if (keys.get("s") != null && keys.get("s")) {
    rect(keyOverlayX + keyWidth, keyOverlayY + keyWidth, keyWidth - 2, keyWidth - 2);
  }
  if (keys.get("d") != null && keys.get("d")) {
    rect(keyOverlayX + keyWidth * 2, keyOverlayY + keyWidth, keyWidth - 2, keyWidth - 2);
  }
  if (keys.get(" ") != null && keys.get(" ")) {
    rect(keyOverlayX, keyOverlayY + keyWidth * 2, keyWidth * 3  - 2, keyWidth - 2);
  }
  if (keys.get("38") != null && keys.get("38")) {
    rect(keyOverlayX + keyWidth, keyOverlayY + keyWidth * 4, keyWidth - 2, keyWidth - 2);
  }
  if (keys.get("37") != null && keys.get("37")) {
    rect(keyOverlayX, keyOverlayY + keyWidth * 5, keyWidth - 2, keyWidth - 2);
  }
  if (keys.get("40") != null && keys.get("40")) {
    rect(keyOverlayX + keyWidth, keyOverlayY + keyWidth * 5, keyWidth - 2, keyWidth - 2);
  }
  if (keys.get("39") != null && keys.get("39")) {
    rect(keyOverlayX + keyWidth * 2, keyOverlayY + keyWidth * 5, keyWidth - 2, keyWidth - 2);
  }
  
  
  strokeWeight(1);
  stroke(128);
  noFill();
  
  rect(keyOverlayX - 1,                 keyOverlayY - 1,                  keyWidth - 1, keyWidth - 1);
  rect(keyOverlayX + keyWidth - 1,      keyOverlayY - 1,                  keyWidth - 1, keyWidth - 1);
  rect(keyOverlayX - 1,                 keyOverlayY + keyWidth - 1,       keyWidth - 1, keyWidth - 1);
  rect(keyOverlayX + keyWidth - 1,      keyOverlayY + keyWidth - 1,       keyWidth - 1, keyWidth - 1);
  rect(keyOverlayX + keyWidth * 2 - 1,  keyOverlayY + keyWidth - 1,       keyWidth - 1, keyWidth - 1);
  rect(keyOverlayX - 1,                 keyOverlayY + keyWidth * 2 - 1,   keyWidth * 3 - 1, keyWidth - 1);
  rect(keyOverlayX + keyWidth - 1,      keyOverlayY + keyWidth * 4 - 1,   keyWidth - 1, keyWidth - 1);
  rect(keyOverlayX - 1,                 keyOverlayY + keyWidth * 5 - 1,   keyWidth - 1, keyWidth - 1);
  rect(keyOverlayX + keyWidth - 1,      keyOverlayY + keyWidth * 5 - 1,   keyWidth - 1, keyWidth - 1);
  rect(keyOverlayX + keyWidth * 2 - 1,  keyOverlayY + keyWidth * 5 - 1,   keyWidth - 1, keyWidth - 1);
  
  
  fill(128);
  
  text("Q", keyOverlayX, keyOverlayY + keyWidth - 5);
  text("W", keyOverlayX + keyWidth, keyOverlayY + keyWidth - 5);
  text("A", keyOverlayX, keyOverlayY + keyWidth * 2 - 5);
  text("S", keyOverlayX + keyWidth, keyOverlayY + keyWidth * 2 - 5);
  text("D", keyOverlayX + keyWidth * 2, keyOverlayY + keyWidth * 2 - 5);
  text("Space", keyOverlayX, keyOverlayY + keyWidth * 3 - 5);
  text("↑", keyOverlayX + keyWidth, keyOverlayY + keyWidth * 5 - 5);
  text("←", keyOverlayX, keyOverlayY + keyWidth * 6 - 5);
  text("↓", keyOverlayX + keyWidth, keyOverlayY + keyWidth * 6 - 5);
  text("→", keyOverlayX + keyWidth * 2, keyOverlayY + keyWidth * 6 - 5);
}
