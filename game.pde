void game() {
  stars.add(new Star());
  background(0);

  int i = 0;
  while (i < stars.size()) {
    
    Star s = stars.get(i);
    s.act();
    s.show();
    if (s.lives == 0){
      stars.remove(i);
    } else{
    i++;
    }
  }
  
  text(frameRate,10,10);
  text( stars.size(),10, 30);                  
}

void gameClicks() {
  mode = PAUSE;
}
