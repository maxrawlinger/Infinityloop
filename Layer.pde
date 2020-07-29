class Layer {
  float scale;
  char letter;
  boolean active;
  color colour;
  //PGraphics pg;

  Layer(char l, color cl) {
    letter = l;
    scale=1;
    colour = cl;
    active = false;
  }

  float getScale(){
    return scale;
  }
  
  char getLetter(){
    return letter;
  }
  
  color getColour(){
    return colour;
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

    textAlign(CENTER, CENTER);
    textSize(24);
    scale(scale);
    fill(colour);
    text(letter, 0, 0);
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

  void update() {
    scale=scale*1.05;
  }
  void reset() {
    scale=1;
  }
}
