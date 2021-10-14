class DigitalClock
{
  int fontSize;
  float x, y;
  float x2, y2;
  int positionX, positionY;
  int positionx, positiony;
  int positionx2, positiony2;
  City c;

  DigitalClock(int _fontSize, float _x, float _y, int _positionX, int _positionY, int _positionx, int _positiony, int _positionx2, int _positiony2, City c) {
    fontSize = _fontSize;
    x = _x;
    y = _y;
    positionX = _positionX;
    positionY = _positionY;
    positionx = _positionx;
    positiony = _positiony;
    positionx2= _positionx2;
    positiony2= _positiony2;
    this.c=c;
  }

  void display()
  {
    c.increaseSecond();
    fill(0);
    textSize(fontSize);
    textAlign(CENTER, CENTER);
    text(c.getHour() + ":" + nf(minute(), 2) + ":" + nf(second(), 2), positionX, positionY);
    text(c.getDay() +"/" + String.valueOf(c.getMonth()) + "/" + String.valueOf(c.getYear()), positionx, positiony);
    textSize(32);
    text(c.getName(), positionx2, positiony2);
    fill(0, 102, 153);
  }
}
