void startStop() {
  if (keyPressed || mousePressed) {
    start = true;
  }
  if (keyPressed) { // ESC is a keyCoded Varaible and used to quit a game, ASCII is a little easier
    if (key == 'q' || key == 'Q') {
      println ("The canvas has exited.");
      exit();
    }
  }
}
