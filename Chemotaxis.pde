worm [] poopy;
int backgrnd = color(0);

void setup() {
  size(800,800);
  background(backgrnd);
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
  worm() {
    myX = (int)(Math.random() * 80)*10;
    myY = (int)(Math.random() * 80)*10;
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }
  void move() {
    randmove = (int)(Math.random()*4 + 1);
    if(randmove == 1){ // up
      myY -= 10;
    }
    if(randmove == 2){ // down
      myY += 10;
    }
    if(randmove == 3){ // right
      myX += 10;
    }
    if(randmove == 4){ // left
      myX -= 10;
    } 
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, 10, 10);
  }
}
