int x = 0;
int y = 0;

void setup() {
 size(500, 500);

 // Set the value of x to be half the width of the window
 x = width / 2;

 // Set the value of y to be half the height of the window
 y = height / 2;
}

void draw () {
 background(130, 120, 110);
  
  //line(0, height / 2, width, height/2);
  //line(width/2, 0, width/2, height);
  
  x = mouseX;
  y = mouseY;
      
  boolean upperLeft = x < width/2 && y > height/2;
  boolean upperRight = x > width/2 && y > height/2;
  boolean bottomLeft = x < width/2 && y < height/2;
  boolean bottomRight = x > width/2 && y < height/2; 
  
  if (upperLeft) {
      x = x - 50;
      fill(100, 150, 50);
  }
  
  if (upperRight) {
    x = x + 50;
    fill(50, 100, 10);
  }
  
  if (bottomLeft) {
        y = y - 50; 
      fill(10, 85, 200);
  }
  
  if (bottomRight) {
        y = y + 50; 
      fill(200, 50, 50);
  }

 // Draw the circle in the position taken from the x and y variables:
 ellipse(x, y, 50, 50);
}

void mousePressed() {
  // When the mouse is pressed, update x and y
  // to contain the current position of the mouse:
  
  
}