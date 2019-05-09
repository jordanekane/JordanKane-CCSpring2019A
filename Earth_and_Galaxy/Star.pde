class Particle {
 
  float xRadius, zRadius;
  float angle;
  float angleSpeed;
  float tiltAngle;
  float rotXSpeed, rotYSpeed;
  float size;
  
  Particle(){
    xRadius = 200 + randomGaussian() * 40; //spread
    zRadius = 100 + randomGaussian() * 20; //spread
    angle = random(TWO_PI);
    angleSpeed = random(PI / 500, PI / 250);
    tiltAngle = randomGaussian() * PI / 32;
    rotXSpeed = random(-PI / 32, PI / 32);
    rotYSpeed = random(-PI / 32, PI / 32);
    size = map(pow(random(1), 7), 0, 1, 1, 5); //accurate size to data 
  }
  
  Particle(float x, float z){
    xRadius = x;
    zRadius = z;
    angle = random(TWO_PI);
    angleSpeed = random(PI / 500, PI / 250);
    tiltAngle = randomGaussian() * PI / 32;
    rotXSpeed = random(-PI / 32, PI / 32);
    rotYSpeed = random(-PI / 32, PI / 32);
    size = map(pow(random(1), 7), 0, 1, 1, 5); //accurate size to data
  }
  
  void display(){
    pushMatrix();
    rotateZ(tiltAngle);
    translate(xRadius * cos(angle), 0, zRadius * sin(angle)); //FIND CORRECT DISTANCE
    rotateX(rotXSpeed * frameCount);
    rotateY(rotYSpeed * frameCount);
    box(size);
    popMatrix();
  }
  
  void update(){
   angle -= angleSpeed;
    if(angle < 0){
      angle += TWO_PI;
    } 
  }
}
