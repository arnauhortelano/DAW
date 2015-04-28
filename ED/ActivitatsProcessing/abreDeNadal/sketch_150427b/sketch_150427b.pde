

void setup(){
  size(510,545);
  frameRate(15);
  PImage img = loadImage("nadal.jpg");
  background(img);
}

void draw(){
  
  if(mouseButton == LEFT){
    fill(160,0,90);
    stroke(255,0,0);
    ellipse(mouseX,mouseY, 10, 10);
  }

  if (mouseButton == RIGHT) {
    fill(100,32,255);
    stroke(255,200,0);
    rect(mouseX, mouseY, 10, 10);
  }
  
  if (mouseButton == CENTER) {
    fill(247,250,3);
    stroke(247,247,3);
    star(mouseX, mouseY, 10, 30, 5);
  }
  

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
