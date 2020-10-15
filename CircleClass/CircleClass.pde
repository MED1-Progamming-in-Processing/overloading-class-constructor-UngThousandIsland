Circle circle;

void setup() {
  size(300, 300);
  
  float randomNum = random(0, 1);
  
  if (randomNum <= 0.5)
  {
      circle = new Circle(random(width), random(height), random(-3, 3), random(-3, 3), 10, 10, #234562);

  } else
  {
  circle = new Circle(random(width), random(height), random(-3, 3), random(-3, 3), 10, #234562);
  }  
  
}

void draw() {
  background(200);

  circle.move();
  circle.display();
 
 }
