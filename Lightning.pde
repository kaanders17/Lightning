int startY = 0;
int startX = 250;
int endY = 0;
int endX = 250;
PImage img;
PImage img2;
void setup()
{
  
  size(500,500);
  
  background(0, 20, 40);
  img = loadImage("burst.png");
  img2 = loadImage("tree.png");
  drawStars();
  //for (int i = 0; i < 10; i++){
  //  star((float)(Math.random()*500), (float)(Math.random()*300), 5, 10, 5); 
  //}

}
void draw()
{
  strokeWeight(5);
  //background(0, 20, 40);
  //stroke((int)(Math.random() * 255));
   //filter( BLUR, 20 );
   stroke(255, 255, 255);
  while(endX < 500){
    endY = startY + ((int)(Math.random() * 10));
    endX = startX + ((int)(Math.random() * 19) - 9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  if (mousePressed == true){
    image(img, 70, 190, width/1.5, height/1.5);
    
  }
  mousePressed = false;
  image(img2, 110, 273, width/2, height/2);
  
  //image(img, 0, 0);
  //background(139, 25, 155);
}
void mousePressed()
{
  //background(139, 25, 155);
  startY = 0;
  startX = 250;
  endY = 0;
  endX = 250;
  //int z = 0;
  //while(
  
  //background(139, 25, 155);
  //image(img2, 0, 0, width/2, height/2);
}

void mouseReleased()
{
  background(0, 20, 40);
  drawStars();
  //image(img2, 110, 273, width/2, height/2);
  //for (int i = 0; i < 10; i++){
  //  star((float)(Math.random()*500), (float)(Math.random()*300), 5, 10, 5); 
  //}
}

void drawStars(){
  noStroke();
  star(100, 101, 5, 10, 5);
  star(70, 152, 5, 10, 5);
  star(241, 143, 5, 10, 5);
  star(352, 164, 5, 10, 5);
  star(273, 185, 5, 10, 5);
  star(174, 116, 5, 10, 5);
  star(165, 27, 5, 10, 5);
  star(256, 38, 5, 10, 5);
  star(447, 149, 5, 10, 5);
  star(138, 151, 5, 10, 5);
  star(229, 62, 5, 10, 5);
  star(311, 73, 5, 10, 5);
  star(462, 84, 5, 10, 5);
  star(453, 195, 5, 10, 5);
  
}
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
