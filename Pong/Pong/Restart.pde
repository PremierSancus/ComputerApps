void restart() {
  playerOneScore = 0;
  playerTwoScore = 0;
  ballMoveX = int(ballPositionX);
  ballMoveY = int(ballPositionY);
  YP1 = 4;
  YP2 = 4;
  int number = int (random (-2, 2));
  while (number == 0) {
    number = int (random (-2, 2));
  }
  SPDX = 2*number;
  number = int (random (-2, 2));
  while (number == 0) {
    number = int (random (-2, 2));
  }
  SPDY = 2.5*number;
}
