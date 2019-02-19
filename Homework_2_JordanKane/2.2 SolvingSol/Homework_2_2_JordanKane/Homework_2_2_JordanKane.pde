/*
Jordan Kane
Homework #2.2
SolvingSol #130
*/
  
// grid 
float lim = 200;
float xDim = 30; //number of vertical lines
float yDim = 28; // number of horizontal lines

void setup (){
  size(1000, 800);
  background (255);
  
float xSpacing = width/xDim;
float ySpacing = height/yDim;

//vertical lines
for(float x = 0; x < width; x += xSpacing){
  line (x, 0, x, height);
  } 
  for (float y = 0; y < height; y += ySpacing){
    line(0, y, width, y);
  }
  
  stroke(0);
  strokeWeight(3);
  noFill();
  
 //LEFT arcs
  arc(0, 198, 800, 1200, PI, PI+TWO_PI);
  arc(0, 600, 800, 1200, PI, PI+TWO_PI);
  
 // RIGHT arcs
  arc(1000, 198, 800, 1200, HALF_PI, PI+HALF_PI);
  arc(1000, 600, 800, 1200, HALF_PI, PI+HALF_PI);
}

void draw(){

}
  
