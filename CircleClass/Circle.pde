class Circle {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  int radius;
  color circleColor;
  int squareWidth;
  int squareHeight;

  //  circle = new Circle(random(width), random(height), random(-3, 3), random(-3, 3), 50);
  Circle(float x, float y, float xSpeed, float ySpeed, int radiusCircle, color circleColor) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    radius = radiusCircle;
  }

  Circle(float x, float y, float xSpeed, float ySpeed, int squareWidth, int squareHeight, color circleColor) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.squareWidth = squareWidth;
    this.squareHeight = squareHeight;
  }
  void move() {
    x += xSpeed;
    if (x < 0 || x > width) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < 0 || y > height) {
      ySpeed *= -1;
    }
  }

    void display() {
      fill(circleColor);
      ellipse(x, y, radius, radius);
      rect(x, y, squareWidth, squareHeight);
    }
  }
