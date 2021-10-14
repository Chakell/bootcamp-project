class City 
{


  public int hour, minute, second, day, month, year;
  public String name;

  City(int hour, int minute, int second, int  day, int month, int year, String name ) 
  {

    this.hour = hour;
    this.minute = minute;
    this.second = second;
    this.day = day;
    this.month = month;
    this.year = year;
    this.name = name;
  }
  
  int getHour() 
  {
    return hour;
  }
  
  int getMinute() 
  {
    return minute;
  }
  
  int getSecond() 
  {
    return second;
  }
  
  int getDay() 
  {
    return day;
  }
  
  int getMonth() 
  {
    return month;
  }


  int getYear() 
  {
    return year;
  }

  String getName() 
  {
    return name;
  }

  void increaseHour() 
  {
    hour++;
  }
  void increaseMinute () 
  {
    minute++;
  }
  void increaseSecond () 
  {
    second++;
  }
  void increaseDay () 
  {
    day++;
  }
  void increaseMonth () 
  {
    month++;
  }
  void increaseYear () 
  {
    year++;
  }
}
