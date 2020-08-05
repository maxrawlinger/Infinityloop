class Layer {
  float scale;
  char letter;
  color colour;
  float rotation;
  float speed;
  int rotationDirection;
  float rotationSpeed;
  //PGraphics pg;

  Layer(char l, color cl, float s) {
    letter = l;
    scale=1;
    colour = cl;
    speed = s;
    rotationDirection = rand_signum();
    rotationSpeed = rand_rotationSpeed();
  }
  int rand_signum() {
    return random(-1, 1) >= 0 ? 1 : -1;
  }
  float rand_rotationSpeed() {
    return radians(random(HALF_PI, PI));
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
    if (activateRotation) {
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
    rotation = rotation+rotationSpeed;
    speed=map(mouseX, 0, width, 1.02, 1.2);
  }
  void reset() {
    scale=1;
  }
}
