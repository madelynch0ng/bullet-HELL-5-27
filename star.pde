class Star {
  float x, y, vx, vy, size;
  int lives; //hitpoint

  Star() {
    x = random( 0, width);
    y= 0;
    vx= 0;
    size = random(1, 6);
    vy = size;
    lives=1;
  }


  void show() {
    square (x, y, size);
  }

  void act() {
    x +=vx;
    y +=vy;
    
    if (y > height){
      lives =0;
    }
  }
  
}
