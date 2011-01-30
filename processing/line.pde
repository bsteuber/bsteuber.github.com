void cross(x, y) {
  line(0,0,x,y);
  line(width,0,x,y);
//  line(0,height,x,y);
  line(width,height,x,y);  
}

boolean mouseInCanvas() {
  return (mouseX>0 &&
          mouseY>0 &&
          mouseX<width &&
          mouseY<height);
}

void setup() {
  size(300, 300);
  stroke(255);
} 

void draw() {
  background(0);
  if (mouseInCanvas()) {
    cross(mouseX, mouseY);
  }
  else {
    cross(50,50);
  }
}