color pink = #EFD9CE;
color p1   = #DEC0F1;
color p2   = #B79CED;
color p3   = #957FEF;
color p4   = #7161EF;
color yellow1 = #FFC300;
color yellow2 = #FFD60A;


int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
boolean directions;
boolean shooting;

// ARRAYLIST
ArrayList<Star> stars;


//keyboard variables 
boolean rightkey, leftkey, upkey, downkey, space; 


void setup() {
  size(800, 800);
  mode = GAME;
  stars = new ArrayList<Star>();
}

void draw() {//a looped funtion
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}  
