/* Jordan Kane 
Creative Coding HW #3
02/21/2019
*/


//ellipse int radius
int radius=0;

//rect int length
int length=300;

// value for mouseClicked
int value = 0;

boolean rectShrink = true;
boolean ellipseShrink = false;

void setup() {
  size(600, 600);
  noStroke();
  smooth(); 
  rectMode(CENTER); 
  
}

void draw() {
  background(value);

  fill(155);
  rect(width/2, height/2, length, length);

  // Make smaller if shrinking, bigger otherwise
  if (rectShrink) length--;
  else length++;

  if (length == 150 || length == 300) rectShrink = !rectShrink;

  fill(value);
  ellipse(width/2, height/2, radius, radius);
  
  // Make smaller if shrinking, bigger otherwise
  if (ellipseShrink) radius--;
  else radius++;
  
  if (radius == 0 || radius == 150) ellipseShrink = !ellipseShrink;
  
}

void mouseClicked() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
