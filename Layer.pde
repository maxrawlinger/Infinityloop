class Layer {
  float scale;
  char letter;
  color colour;
  float rotation;
  float speed;
  boolean activeRotation;
  //PGraphics pg;

  Layer(char l, color cl, float s, boolean r) {
    letter = l;
    scale=1;
    colour = cl;
    speed = s;
    activeRotation = r;
    rotation = rotation * random(-1, 1);
    
  }
  
  float getScale() {
    return scale;
  }

  char getLetter() {
    return letter;
  }

  color getColour() {
    return colour;
  }

  void setColour() {
    colour = color(random(255), random(255), random(255));
  }

  void show() {

    textAlign(CENTER, CENTER);
    textSize(24);
    scale(scale);
    if (activeRotation) {
      rotate(rotation);
    }
    fill(colour);
    text(letter, 0, -2);
    update();
  }

  void update() {
    scale=scale*speed;
    rotation = rotation+0.05;
  }
  void reset() {
    scale=1;
  }
}
