function Particle (x, y) {
    this.pos = createVector (x, y);
    this.prev = createVector(x, y);
    this.vel = createVector(); //p5.Vector.random2D();
    //this.vel.setMag(random(2, 5));
    this.acc = createVector();

    this.update = function() {
        this.vel.add(this.acc);
        this.vel.limit(5);
        this.pos.add(this.vel);
        this.acc.mult(0);

    // //prevent particles from flying off of the screen (not working)
    // if (this.pos.x < -10) this.pos.x = width; 
    //   if (this.pos.x > width + 10) this.pos.x = 0;
    //   if (this.pos.y < -10) this.pos.y = height; 
    //   if (this.pos.y > height + 10) this.pos.y = 0;
    }

    this.show = function () {
        stroke(255, 255);
        strokeWeight (1);
        line(this.pos.x, this.pos.y, this.prev.x, this.prev.y);

        this.prev.x = this.pos.x;
        this.prev.y = this.pos.y;
    }

    this.attracted = function(target) {
        // var dir = target - this.pos
        var force = p5.Vector.sub(target, this.pos);
        var dsquared = force.magSq();
        dsquared = constrain(dsquared, 5, 50);
        var G = 50; 
        var strength = G / dsquared;
        force.setMag(strength);

        /*this allowed the particles to repel from the mouse click
        but since constrain not working its temp removed*/
        //force.mult(-1);

        this.acc.add(force);

    }
}