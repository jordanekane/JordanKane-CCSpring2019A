/* Jordan Kane
March 14, 2019
CC Homework #6 - Create a particle system
Created a system that repels the mouse position while keeping all of the particles restrained within 
the canvas. Used HSB color mapping to apply color to my shape.
*/

//number of ellipse on screen
int num = 300;
Particle[] p = new Particle[num];

void setup(){
  size (900, 700);
  colorMode (HSB);
  
  for(int i = 0; i < num; i ++) { 
    p[i] = new Particle(new PVector(random(width), random(height)), 100, 150);
  }
}

void draw (){
  background(0);
  
  for(int i = 0; i < num; i ++) { 
  p[i].update(p, i);
  }
}
