/* Jordan Kane
Creative Coding Homework #5
03/7/19
*/ 

void setup () {
  size(900, 700);
  smooth();
  noStroke();
  frameRate(55);
}

void draw(){
  background(255);
  
 translate(width/2, height/2);
 rotate(radians(frameCount));
  
  // draw petals
  fill(252, 138, 234); 
  for (int i = 0; i < 5; i++) {
  ellipse(0, -40, 50, 50);
  rotate(radians(72));
}

  // draw center of flower
fill(255, 246, 59);
ellipse(0, 0, 50, 50); 

}

// I'd like to find a way to have the flower bloom on various parts of the page but might need to revist that. 
