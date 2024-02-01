int x, y; // Global variables

void setup() {
  size(450,450);
  fill(255);
  frameRate(10);
  // set start coords
  x = 30;
  y = 30;
}

void draw() { // algorithim for your first name
  //background(127);
  stroke(0);
  strokeWeight(5);
  fill(255);
  //drawName();
  //noLoop();
}

void drawName() { // method to draw right line
  moveRight(30);
  moveDown(150);
  moveUp(75);
  moveUpRight(75);
  moveDownLeft(75);
  moveDownRight(75);
  moveRight(10);
  moveUpRight(75);
  moveDownRight(30);
  moveLeft(60);
  moveRight(60);
  moveDownRight(45);
  moveRight(10);
  moveUp(120);
  moveLeft(50);
  moveRight(100);
  moveDown(10);
  moveRight(50);
  moveLeft(50);
  moveDown(40);
  moveRight(40);
  moveLeft(40);
  moveDown(70);
  moveRight(50);
}

void moveRight(int rep){
  for (int i = 0; i < rep; i++) {
    point(x+i,y);
  }
  x=x+(rep);
}

void moveDown(int rep) {
  for(int i = 0; i < rep; i++) {
    point(x,y+i);
  }
  y = y + rep;
}

void moveLeft(int rep) {
  for(int i=0; i < rep; i++) {
    point(x-i,y);
  }
  x = x - rep;
}

void moveUp(int rep) {
  for(int i=0; i < rep; i++) {
    point(x,y-i);
  }
  y = y - (rep);
}

void moveUpLeft(int rep) {
  for(int i=0; i < rep; i++) {
    point(x-i,y-i);
  }
  x = x - rep;
  y = y - rep;
}

void moveDownRight(int rep) {
  for(int i=0; i < rep; i++) {
    point(x+i,y+i);
  }
  x = x + rep;
  y = y + rep;
}

void moveUpRight(int rep) {
  for(int i=0; i < rep; i++) {
    point(x+i,y-i);
  }
  x = x + rep;
  y = y - rep;
}

void moveDownLeft(int rep) {
  for(int i=0; i < rep; i++) {
    point(x-i,y+i);
  }
  x = x - rep;
  y = y + rep;
}

void mousePressed(){
  saveFrame("line-######.png");
}

//void keyPressed(){
//  if(key == CODED) {
//    if(keyCode == RIGHT) {
//    moveRight(5);
//    } else if(keyCode == LEFT) {
//    moveLeft(5);
//    } else if(keyCode == UP) {
//    moveUp(5);
//    } else if(keyCode == DOWN) {
//    moveDown(5);
//    }
//  }
//}

void keyPressed() {
  if(key == 'w' || key == 'W') {
    moveUp(5);
  } else if(key == 's' || key == 'S') {
    moveDown(5);
  } else if(key == 'a' || key == 'A') {
    moveLeft(5);
  } else if(key == 'd' || key == 'D') {
    moveRight(5);
  }
}
