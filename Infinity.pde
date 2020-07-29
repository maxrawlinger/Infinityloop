color c;
String str;
ArrayList<Layer> layerList;
//ArrayList<PGraphics> graphiclayerList;
int spacing;
//int screenWidth;
//PFont font;

void setup() {
  size(800, 800, P3D);
  background(255);
  smooth(8);
  textMode(SHAPE);
  //arraylist because of pop and push
  //delete condition
  str = "INFINITYLOOP";
  //str = "INFI";
  layerList = new ArrayList<Layer>();
  //font = createFont("hula.ttf", 24);
  //textFont(font);
  spacing = 11;




  for (int i = 0; i< str.length(); i++) {
    //scale factor übergeben , mit minus init und kriterum für ab +scale
    layerList.add(new Layer(str.charAt(i), color(random(255), random(255), random(255))));

    //createGraphics(40, 40);
  }
}

void draw() {
  background(c);
  translate(width/2, height/2);  
  
  for (int i = 0; i<3; i++){
  if (i==0) {
  pushMatrix();
  layerList.get(i).active=true;
  layerList.get(i).show();
  popMatrix();
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
