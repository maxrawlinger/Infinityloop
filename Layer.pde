class Layer {
  float i;
  char s;
  boolean active;
  color c;
  PGraphics pg;

  Layer(char str, color cl) {
    s = str;
    i=1;
    c = cl;
    active = false;
  }


  void show() {
    /*if (active) {
     //background(123);
     textAlign(CENTER, CENTER);
     textSize(24);
     scale(i);
     fill(c);
     text(s, 0, 0);
     
     update();
     }*/
    if (active) {
      textAlign(CENTER, CENTER);
      textSize(24);
      scale(i);
      fill(c);
      text(s, 0, 0);
      //println(width);
      /*
      if(textWidth(s)*i>displayWidth){
       
       println("Reset of Layer: "+s);
       reset();
       }
       else{
       println("update");
       update();
       }
       */
      update();
    }
  }

  void update() {
    i=i*1.05;
  }
  void reset() {
    i=1;
  }
}
