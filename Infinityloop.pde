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
  size(800, 800, P3D);
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
  randomColor = true;
  speed = 1.02;
  activateRotation = true;
  fade = false;
  limit=200;





  for (int i = 0; i< str.length(); i++) {
    //scale factor übergeben , mit minus init und kriterum für ab +scale
    layerList.add(new Layer(str.charAt(i), color(random(255), random(255), random(255)), speed, activateRotation));

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

      pushMatrix();
      layerList.get(i).show();
      popMatrix();
    } else

      if (layerList.get(i-1).getScale()>spacing) {

        pushMatrix();
        layerList.get(i).show();
        rotate(PI/3.0);
        popMatrix();

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
  /*
  pushMatrix();
   //layerList.get(0).active=true;
   layerList.get(0).show();
   popMatrix();
   
   if (layerList.get(0).i>spacing) {
   
   pushMatrix();
   //layerList.get(1).active=true;
   layerList.get(1).show();
   popMatrix();
   }
   
   if (layerList.get(1).i>spacing) {
   
   pushMatrix();
   //layerList.get(2).active=true;
   layerList.get(2).show();
   popMatrix();
   }
   //take color and hack into background
   
   
   if (layerList.get(2).i>spacing)
   { 
   
   pushMatrix();
   //layerList.get(3).active=true;
   layerList.get(3).show();
   popMatrix();
   //background nur setzen wenn pop buchstabe
   
   
   layerList.get(0).reset();
   if ((layerList.get(0).s == ('T') || layerList.get(0).s ==('I'))) {
   c = layerList.get(0).c;
   //background(c);
   }
   layerList.add(layerList.get(0));
   layerList.remove(0);
   }
   */
}
