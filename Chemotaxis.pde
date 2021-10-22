worm [] poopy;

void setup() {
  size(800,800);
  background(0);
  poopy = new worm[100];
  for(int i = 0; i < poopy.length; i++){
    poopy[i] = new worm();
  }
}
void draw() {
  for(int i = 0; i < poopy.length; i++){
    poopy[i].move();
    poopy[i].show();
  }
}

class worm {
  int myX, myY, randmove, myColor;
  boolean up, down, left, right;
  worm() {
    myX = (int)(Math.random() * 80)*10;
    myY = (int)(Math.random() * 80)*10;
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }
  void move() {
    randmove = (int)(Math.random()*4 + 1);
    if(randmove == 1){ myY -= 10; } //up
    if(randmove == 2){ myY += 10; } //down
    if(randmove == 3){ myX -= 10; } //left
    if(randmove == 4){ myX += 10; } //right
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, 10, 10);
  }
}

boolean [] isValid(int x, int y) {
  boolean [] direction = {true, true, true, true};
  if(get(x,y - 10) != 0) { direction[0] = false; } //check up
  if(get(x,y + 10) != 0) { direction[1] = false; } //check down
  if(get(x - 10,y) != 0) { direction[2] = false; } //check left
  if(get(x + 10,y) != 0) { direction[3] = false; } //check right
  return direction;
}
