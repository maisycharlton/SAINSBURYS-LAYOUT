
// Example PEmbroider program
import processing.embroider.*;
PEmbroiderGraphics E;

void setup() {

  // Starting up:
  // Starting up:
  noLoop();
  size(1700,1050);
  E = new PEmbroiderGraphics(this, width, height);
  
  E.strokeSpacing(2.0);    // this spaces the stroke (outline) stitches by 2 pixels
  E.hatchSpacing(3.0);    // this spaces hatch (fill) stitches by 3 pixels
  E.setStitch(5, 30, 0.0); // this sets minimum stitch to be 5px
  
  // change this line you want a different file type
  String outputFilePath = sketchPath("filename.pes"); 
  E.setPath(outputFilePath); 
  E.beginDraw();
  E.clear();

  //-------
  //building outline
  
  E.line(200, 40, 1690, 40); 
  E.line(1690, 40, 1690, 300); 
  E.line(1690, 300, 1550, 300);
  E.line(200, 40, 200,300);
  E.line(200,300,10,300);
  E.line(10,300,10,1000);
  E.line(10,1000,1350,1000);
  E.line(1550,300, 1550,600);
  E.line(1550,600,1350,600);
  E.line(1350,600,1350,1000);
  
 

  
  
  //shelves
  
  //fruit and veg
  E.rect(950,550,130,300);
  //water
  E.rect(700,550,90,300);
  //veg and salad
  E.rect(1260,600,90,300);
  //self service
  E.rect(500,500,50,400);
  //staffed checkout
  E.rect(200,600,50,300);
  //tobbacco
  E.rect(10,600,50,300);
  //impulse buys
  E.rect(200,500,50,75);
  //alcohol
  E.rect(10,330,60,250);
  //crisps
  E.rect(70,300,230,25);
  //frozen 
  E.rect(250,40,50,150);
  //special buys 
  E.rect(250,190,50,110);
  //chocolate
  E.rect(350,350,80,150);
  //biscuits etc 
  E.rect(300,40,350,30);
  //cheese
  E.rect(650,40,350,30);
  //cleaning and pharmacy
  E.rect(650,150,100,300);
  //bakery and bread
  E.rect(550,150,100,300);
  //meal deal and sweets
  E.rect(1000,150,100,300);
  //pasta, sauces, tinned goods
  E.rect(1100,150,100,300);
  //milk and juice
  E.rect(1200,40,490,30);
  //yoghurt etc
  E.rect(1670,70,30,230);
  //ham etc 
  E.rect(1500,250,170,50);
  //pizza, ready meals, meat and fish
  E.rect(1500,250,50,350);
  //dips etc
  E.rect(1260,550,240,50);
  //eggs and baking
  E.rect(1300,150,100,100);
  
   E.stroke(0,0,255);
  //key products
  E.beginShape();
  E.vertex(1100,1000);
  E.vertex(1350,200);
  E.vertex(800,40);
  E.vertex(700,300);
  E.vertex(400,500);
  E.vertex(500,700);
  E.vertex(1100,1000);
E.endShape();


  E.stroke(255, 0, 0);         // sets the stroke color, just like Processing.        
  //actual pathway
  E.beginShape();
  E.vertex(1155,1000);
  E.vertex(1155,500);
  E.vertex(1450,500);
  E.vertex(1450,125);
  E.vertex(900,125);
  E.vertex(900,470);
  E.vertex(500,470);
  E.vertex(500,200);
  E.vertex(325,200);
  E.vertex(325,520);
  E.vertex(400,520);
  E.vertex(400,950);
  E.vertex(1100,950);
  E.vertex(1100,1000);
  
E.endShape();
  
  
  
  //staff only
  E.fill(0, 0, 0);
  E.rect(1000,40,200,20);
  //entrance
  E.rect(950,980,300,20);
 
  
  //key products 
   //eggs
  E.rect(1300,150,100,100);
  //cheese
  E.rect(770,25,100,100);
  //bread
  E.rect(650,250,100,100);
  //tills
  E.rect(350,450,100,100);
  

   
  //----------  
  // Visualization and export:
  // NOTE: Leave optimize() and endDraw() commented out,
  // until you are ready to export the embroidery file! 
  // Don't forget to un-comment them when you want to export!
  //
  // E.optimize(); // VERY SLOW, but essential for file output! 
  E.visualize(true, true, false);   // Display the embroidery path on-screen.
  // E.endDraw();  // Actually writes out the embroidery file.
}
