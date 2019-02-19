/* Jordan Kane
Homework 2.3 - User Interaction / Motion Sketch
*/

int numRect = 25;
int value = 0;

// define container arrays for positions and speeds
float [] positionX = new float[numRect];
float [] positionY = new float[numRect];
float [] speedX = new float[numRect];
float [] speedY = new float[numRect];

void setup (){
  size (1200, 800);
  
  for(int i = 0; i < numRect; i++){
    //give the rects random position on the canvas
    positionX[i] = random(100, width - 100);
    positionY[i] = random(100, height - 100);
    
    //give the rects a random x, y speed
    speedX[i] = random(-8, 8);
    speedY[i] = random(-8, 8);
  }
}

void draw(){
  
  background(155); //refresh background
  noStroke();
  fill(value);
  
  for(int i = 0; i < numRect; i++){
    
   //draw rect
   rect(positionX[i], positionY[i], 25, 25); 
   
  //check the boundary collisions
  if(positionX[i] > width || positionX[i] < 0){
  speedX[i] *= -1;
  }
  if(positionY[i] > height || positionY[i] < 0){
  speedY[i] *= -1;
  }
  
  //move rect 
  positionX[i] += speedX[i];
  positionY[i] += speedY[i];
  }
}

//click to see rect change color
void mouseClicked() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
