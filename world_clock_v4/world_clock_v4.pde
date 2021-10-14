//variables
int x=400;
int y=300;

//square's brightness
float colour = 0;
float colour1 = 206;
float colour2 = 135;


DigitalClock digitalClock, digitalClock1, digitalClock2, digitalClock3;
City london = new City(hour(), minute(), second(), day(), month(), year(), "London");
City hongKong = new City((hour() + 7) % 24, minute(), second(), day(), month(), year(), "Hong Kong");
City seoul = new City((hour() + 8) % 24, minute(), second(), day(), month(), year(), "Seoul");
City shanghai = new City((hour() + 7) % 24, minute(), second(), day(), month(), year(), "Shanghai");

void setup()
{
  size(800, 600);
  noStroke ();
}
void draw()
{
  digitalClock = new DigitalClock(40, width/2, height/2+15, x-380, y-270, x-380, y-230, x-380, y-190, london);
  digitalClock1 = new DigitalClock(40, width/2, height/2+15, x+380, y-270, x+380, y-230, x+380, y-190, hongKong);
  digitalClock2 = new DigitalClock(40, width/2, height/2+15, x+380, y+190, x+380, y+230, x+380, y+270, seoul);
  digitalClock3 = new DigitalClock(40, width/2, height/2+15, x-380, y+190, x-380, y+230, x-380, y+270, shanghai);



  background(255);
  // Draw lines
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);

  // Fade rects
  colour = colour + 1;
  colour1 = colour1 - 1;
  colour2 = colour2 - 1;

  // Fill and draw each rect

  //clock
  fill(colour, colour1, colour2);
  rect(0, 0, x, y);
  digitalClock.display();

  //clock1
  fill(250, 225, 58);
  rect(x, 0, 800-x, y);
  digitalClock1.display();

  //clock2
  fill (146, 138, 136);
  rect(x, y, 800-x, 600-y);
  digitalClock2.display();

  //clock3
  fill(104, 177, 33);
  rect(0, y, x, 600-y);
  digitalClock3.display();


  // Mouse location
  if (mouseX < x && mouseY < y)
  {
    filter(INVERT);
    colour = 255;

    if (x<=600) x+=(600-x)*0.07;
    {
      if (y<=450) y+=(450-y)*0.07;
    }
  }

  if (mouseX > x && mouseY < y)
  {
    if (x>=200) x-=(x-200)*0.07;
    {
      if (y<=450) y+=(450-y)*0.07;
    }
  }


  if (mouseX < x && mouseY > y)
  {
    if (x<=600) x+=(600-x)*0.05;
    {
      filter(INVERT);
      if (y>=150) y-=(y-150)*0.05;
    }
  }

  if (mouseX > x && mouseY > y)
  {
    if (x>=200) x-=(x-200)*0.07;
    {
      if (y>=150) y-=(y-150)*0.07;
    }
  }
}
