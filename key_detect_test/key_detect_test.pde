import java.util.Map;

HashMap<String, Boolean> keys = new HashMap<String, Boolean>();



void setup() {
  size(800, 800);
  
  keys.put("q", Boolean.FALSE);
  keys.put("w", Boolean.FALSE);
  keys.put("a", Boolean.FALSE);
  keys.put("s", Boolean.FALSE);
  keys.put("d", Boolean.FALSE);
  keys.put(" ", Boolean.FALSE);
  keys.put("37", Boolean.FALSE);
  keys.put("38", Boolean.FALSE);
  keys.put("39", Boolean.FALSE);
  keys.put("40", Boolean.FALSE);
}



void keyPressed() {
  String key2 = String.valueOf(key).toLowerCase();
  
  if (keys.get(key2) == null) {
    // Nothing
  } else if (keys.get(key2)) {
    // Also nothing
  } else if (key == CODED) {
    keys.put(String.valueOf(keyCode), Boolean.TRUE);
  } else {
    keys.put(key2, Boolean.TRUE);
  } 
}


void keyReleased() {
  keys.put(String.valueOf(key).toLowerCase(), Boolean.FALSE);
  keys.put(String.valueOf(keyCode), Boolean.FALSE);
}



void draw() {
  float keyWidth = 48;
  background(0);
  noStroke();
  for (Map.Entry keyElement : keys.entrySet()) {
    if (keyElement.getValue() == Boolean.TRUE)
      println(keyElement.getKey());
  }
  
  fill(255);
  
  if (keys.get("q") != null && keys.get("q")) {
    rect(100, 100, keyWidth, keyWidth);
  }
  if (keys.get("w") != null && keys.get("w")) {
    rect(150, 100, keyWidth, keyWidth);
  }
  if (keys.get("a") != null && keys.get("a")) {
    rect(100, 150, keyWidth, keyWidth);
  }
  if (keys.get("s") != null && keys.get("s")) {
    rect(150, 150, keyWidth, keyWidth);
  }
  if (keys.get("d") != null && keys.get("d")) {
    rect(200, 150, keyWidth, keyWidth);
  }
  if (keys.get(" ") != null && keys.get(" ")) {
    rect(100, 200, keyWidth * 3 + 4, keyWidth);
  }
  if (keys.get("38") != null && keys.get("38")) {
    rect(350, 100, keyWidth, keyWidth);
  }
  if (keys.get("37") != null && keys.get("37")) {
    rect(300, 150, keyWidth, keyWidth);
  }
  if (keys.get("40") != null && keys.get("40")) {
    rect(350, 150, keyWidth, keyWidth);
  }
  if (keys.get("39") != null && keys.get("39")) {
    rect(400, 150, keyWidth, keyWidth);
  }
}
