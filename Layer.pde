class Layer {
  float scale;
  char letter;
  color colour;
  float rotation;
  //PGraphics pg;

  Layer(char l, color cl) {
    letter = l;
    scale=1;
    colour = cl;
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
  
  void setColour(){
    colour = color(random(255), random(255), random(255));
  }
  
  void show() {

    textAlign(CENTER, CENTER);
    textSize(24);
    scale(scale);
    rotate(rotation);
    fill(colour);
    text(letter, 0, -2);
    update();
  }

  void update() {
    scale=scale*1.05;
    rotation = rotation+0.05;
  }
  void reset() {
    scale=1;
  }
}
