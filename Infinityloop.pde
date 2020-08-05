ArrayList<Layer> layerList;
color bgColor;
String str;
int spacing;
int layerAmount;
boolean randomColor;
boolean activateRotation;
float speed;
boolean fade;
int limit;
//int screenWidth;
//PFont font;
//ArrayList<PGraphics> graphiclayerList;

void setup() {
  size(1000, 1000, P3D);
  //fullScreen();
  background(255);
  smooth(8);
  textMode(SHAPE);
  //arraylist because of pop and push
  //delete condition
  str = "INFINITYLOOP";
  //str = "INFIN";
  //str = "teamhula";
  layerList = new ArrayList<Layer>();
  //font = createFont("hula.ttf", 24);
  //textFont(font);
  spacing = 5;
  layerAmount = 8;
  randomColor = false;
  speed = 1.02;
  activateRotation = true;
  fade = false;
  limit=200;





  for (int i = 0; i< str.length(); i++) {
    //scale factor übergeben , mit minus init und kriterum für ab +scale
    layerList.add(new Layer(str.charAt(i), color(random(255), random(255), random(255)), speed));

    //createGraphics(40, 40);
  }
}

void draw() {
  if (!fade) {
    background(bgColor);
  }
  translate(width/2, height/2);  

  for (int i = 0; i<layerAmount; i++) {

    if (i==0) {

      printLetter(i);
    } else

      if (layerList.get(i-1).getScale()>spacing) {

        printLetter(i);

        if (layerList.get(layerAmount-1).getScale()>spacing) {

          layerList.get(0).reset();
          if (!fade) {
            if ((layerList.get(0).getLetter() == ('T') || layerList.get(0).getLetter() ==('I') || layerList.get(0).getLetter() ==('N') || layerList.get(0).getLetter() ==('F')|| layerList.get(0).getLetter() ==('Y'))) {
              bgColor = layerList.get(0).getColour();
              if (randomColor) {
                layerList.get(0).setColour();
              }
            }
          }

          layerList.add(layerList.get(0));
          layerList.remove(0);
        }
      }
  }
}
void printLetter(int i) {
  pushMatrix();
  layerList.get(i).show();
  popMatrix();
}

void changeRotationMode() {
  activateRotation = !activateRotation;
}
void changeColorMode() {
  randomColor = !randomColor;
}
void keyPressed() {
  switch(key) {

  case 'r': 
    changeRotationMode();
    println("Rotation fixed:" + " " + !activateRotation); 
    break;
  
  case 'c': 
    changeColorMode();
    println("Colormode active:" + " " + randomColor); 
    break;
  }
}
