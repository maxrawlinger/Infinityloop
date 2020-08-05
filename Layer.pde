class Layer {
  float scale;
  char letter;
  color colour;
  float rotation;
  float speed;
  boolean activeRotation;
  int rotationDirection;
  //PGraphics pg;

  Layer(char l, color cl, float s, boolean r) {
    letter = l;
    scale=1;
    colour = cl;
    speed = s;
    activeRotation = r;
    rotationDirection = rand_signum();
    
  }
  int rand_signum() {
    return random(-1, 1) >= 0 ? 1 : -1;
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
    if (activeRotation) {
      rotate(rotationDirection*rotation);
    }
    textAlign(CENTER, CENTER);
    textSize(24);
    scale(scale);
    
    fill(colour);
    text(letter, 0, -2);
    update();
  }

  void update() {
    scale=scale*speed;
    rotation = rotation+0.05;
    speed=map(mouseX, 0, width, 1.02, 1.2);
  }
  void reset() {
    scale=1;
  }
}
