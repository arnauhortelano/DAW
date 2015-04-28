

void setup(){
  size(510,545);
  frameRate(15);
  background(150,179,209);
}

void draw(){
  
  if(mouseButton == LEFT){
    fill(1,255,100);
    stroke(250,100,3);
    ellipse(mouseX,mouseY, 40, 40);
  }

  if (mouseButton == RIGHT) {
    fill(250,100,3);
    stroke(1,255,100);
    rect(mouseX, mouseY, 40, 40);
  }
}

