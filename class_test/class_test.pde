class Child {
  String name;
  
  Child(String n) {
    name = n;
  }
}

class YoMama {
  String name;
  Child[] children;
  
  YoMama(int cc, String n) {
    name = n;
    children = new Child[cc];
  }
}

YoMama g_mom = new YoMama(3, "Going");

Child ch1 = new Child("Gertrude");
Child ch2 = new Child("Gertrude II");
Child ch3 = new Child("Peepo");

g_mom.children[0] = ch1;
g_mom.children[1] = ch2;
g_mom.children[2] = ch3;

println(g_mom.name);
for (Child i : g_mom.children) {
  println(i.name);
}
