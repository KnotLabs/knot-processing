int x = 0;
int y = 0;
int r = 0;
boolean up = true;

void setup() {
  background(255);
  size(500, 500);
  fill(0);
  rect(0,0,250,500);
  strokeWeight(20);
  strokeCap(ROUND);
}

void draw() {
  stroke(r);
  line(x, y, mouseX, mouseY);
  x = mouseX;
  y = mouseY;
  if(r == 255){
    up = false;
  } else if(r == 0) {
    up = true;
  }
  if(up){
    r++;
  } else {
    r--;
  }
}