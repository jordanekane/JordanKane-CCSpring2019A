/*
Jordan Kane
Week 12: CSV file data

I understand that this assignment is not up to standard of what I should be turning
in at this point in the semester, I also understand that grades are due 5/17. This is 
very unfinished and I truly just was not able to finish within the given time because of
given my schedule and personal obligations over the last week and a half. 

I am very sorry.

*/

//this is data about found pets up for adoption in Washington State.
Table pets;

void setup () {
  size(600, 600);
  background(150);
  
  pets = loadTable("foundpets.csv", "header");
  
  int rowCount = pets.getRowCount();
  
  for(int i = 0; i < rowCount; i++){
    TableRow row = pets.getRow(i); 
    String output = ""; 
    
    output += row.getString("animal_type"); 
    
    println(output);
 
  }
  
 /* This is what is unfinished, defining the individual types of animals and parsing it
 into a visualization.  */ 
 
  float cat, dog, deadCat, bird, rat;
  cat = dog = deadCat = bird = rat = 0;
  
  for(int i = 0; i < rowCount; i++){
    TableRow row = pets.getRow(i);
 
  }
  
  //Would like to create a graph of what type of pets were found.
  float angle = 0.0; //initial angle at 0
  
  //cats
  noStroke();
  fill(255, 0, 0);
  arc(width/2, height/2, 500, 500, angle, angle + (cat/rowCount)*TWO_PI);
  angle += (cat/rowCount)*TWO_PI;//increment angle
  
  //dogs
  fill(255, 150, 0);
  arc(width/2, height/2, 500, 500, angle, angle + (dog/rowCount)*TWO_PI);
  angle += (dog/rowCount)*TWO_PI;
  
  //birds
  fill(255, 255, 0);
  arc(width/2, height/2, 500, 500, angle, angle + (bird/rowCount)*TWO_PI);
  angle += (bird/rowCount)*TWO_PI;
  
  //deadcat
  fill(0, 0, 255);
  arc(width/2, height/2, 500, 500, angle, angle + (deadCat/rowCount)*TWO_PI);
  angle += (deadCat/rowCount)*TWO_PI;
  
  //rat
  fill(0, 255, 0);
  arc(width/2, height/2, 500, 500, angle, angle + (rat/rowCount)*TWO_PI);
  angle += (rat/rowCount)*TWO_PI;  
  
}
