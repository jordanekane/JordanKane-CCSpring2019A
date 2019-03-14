class Particle {
  PVector pos;
  PVector vel;
  
  float r, mr;
  
  //cap max speed so particle does not zoom off screen
  float speed = 0.1;
  float max = 2;
  
  //position, shape radius and mouse radius
  Particle(PVector pos, float r, float mr){
    this.pos = pos;
    this.r = r;
    this.mr = mr;
    
    vel = new PVector(random(-1, 1), random (-1, 1));
    }
    void update(Particle[] p, int i) {
      //ellipse changes colors based on map location
      float h = map(pos.x, 0, width, 0, 255);
      pos.add(vel);
      
      //if particle goes off screen it will wrap around the other side.
      if (pos.x < -10) pos.x = width; 
      if (pos.x > width + 10) pos.x = 0;
      if (pos.y < -10) pos.y = height; 
      if (pos.y > height + 10) pos.y = 0;
      
      //add constrain to set limit to variable size
      vel.x = constrain(vel.x + random(-speed, speed), -max, max);
      vel.y = constrain(vel.y + random(-speed, speed), -max, max);
  
      // create a force to push particles away from the mouse position    
      float ang = atan2(pos.y - mouseY, pos.x - mouseX);
      float dist = pos.dist(new PVector(mouseX, mouseY));
      if(dist < r) {
         
       float force = map(dist, 0, r, 30, 0);
       vel.x += force * cos(ang);
       vel.y += force * sin(ang);
     }
     
      noStroke();
      // call map color to shape
      fill(h, 255, 255);
      ellipse(pos.x, pos.y, 5, 5);
    }
}
