class Particle {
  
    constructor() {
      this.reset();
    }
    reset() {
      this.x = random(width);
      this.y = random(-150, 0);
      this.vy = random(0.1, 2);
      this.maxy = this.y + height;
      this.r = 0;
      this.tr = 50;
      this.w = random(0.1, 2);
    }
    update() {
      if (this.y < this.maxy) {
        this.y += this.vy;
      } else {
        this.r++;
      }
      if (this.r > this.tr) this.reset();
    }
    display() {
      strokeWeight(this.w);
      if (this.y < this.maxy) {
       stroke(49, 148, 245);
       fill(49, 148, 245);
       push();
       translate(this.x,this.y);
       beginShape();
       strokeWeight(1);
       vertex(0,-5);
       quadraticVertex(3, 0, 0, 1);
       quadraticVertex(-3,0, 0, -5);
       endShape(CLOSE);
       pop();
      } else {
        stroke(165, 200, 247, map(this.r, 0, this.tr, 255, 0));
        noFill();
        ellipse(this.x, this.y, this.r, this.r*.5);
      }
    }
  }