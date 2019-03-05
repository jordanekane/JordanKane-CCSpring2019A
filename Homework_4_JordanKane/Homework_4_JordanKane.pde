/* 
Jordan Kane
Creative Coding HW 4
Create Repetative, Harmonic Motions */

void setup() {
  size(900,700);
}
 
void draw() {
  background(127,0,0);
  
 // Speed and Time of Motion (X1)
  float period = 220;
  float amplitude = 300;
  
// Define 1st X location
  float x = amplitude * cos(TWO_PI * frameCount / period);
  
  noStroke();
  fill(255,200,200);
  translate(width/2,height/2);
  
 //Define Shapes
  //line(0,0,x,0);
    ellipse(x,0,50,50);
  
  // Speed Motion (Y)
  float amplitude2 = 200;
  
  // Define Y location
  float y = amplitude2 * cos(TAU * frameCount / period);
  
  fill(255,0,0);;
  //Define Shapes
  //line(0,0,0,y);
    ellipse(0,y,35,35);
    
}
