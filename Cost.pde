class Cost {

  //Variables
  String  startDate, endDate;
  int numPeople, duration;

  //Constructor
  //Cost(number of people on the trip, duration of the trip)
  Cost(int NumPeople, int Duration, String Startdate, String Enddate) {
    this.numPeople = NumPeople;
    this.duration = Duration;
    this.startDate = Startdate;
    this.endDate = Enddate;
  }

  //THE HOTEL/PLANE costs that Megan found will be the BASE cost. DEPENDING on the month, multiply by a factor to determine the cost
  float totalCost(City city) {
    int STmonthLoco = this.startDate.indexOf("/");
    int STmonth = int(this.startDate.substring(0, STmonthLoco));
    int ENmonthLoco = this.endDate.indexOf("/");
    int ENmonth = int(this.endDate.indexOf(0, ENmonthLoco));
    int STmonthend = int(this.startDate.substring(STmonthLoco+1));
    int ENmonthend = int(this.endDate.substring(ENmonthLoco+1));


    if (STmonth == ENmonth) {
      if (STmonth == 1 || STmonth == 3 || STmonth == 6 || STmonth == 7 || STmonth == 8 || STmonth == 10 || STmonth == 12) {
        float total = this.numPeople * this.duration * 1.09 * (city.hotelPrice + city.travelPrice);
        return total;
      } else {
        float total = this.numPeople * this.duration * (city.hotelPrice + city.travelPrice);
        return total;
      }
    } else {
      if (STmonth == 1 || STmonth == 3|| STmonth == 7 || STmonth == 8 || STmonth == 10 || STmonth == 12) {
        int remaining1 = 31 - STmonthend;
        int remaining2 = 30 - ENmonthend;
        float total = this.numPeople * (remaining1 * 1.09 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice));
        return total;
      } else if (STmonth ==6) {
        int remaining1 = 30 - STmonthend;
        int remaining2 = 31 - ENmonthend;
        float total = this.numPeople * (remaining1 * 1.09 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice));
        return total;
      } else if (STmonth == 4 || STmonth == 9|| STmonth == 11 ) {
        int remaining1 = 30 - STmonthend;
        int remaining2 = 31 - ENmonthend;
        float total = this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice));
        return total;
      } else if (STmonth == 5 || STmonth == 10) {
        int remaining1 = 31 - STmonthend;
        int remaining2 = 30 - ENmonthend;
        float total = this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice));
        return total;
      } else if (STmonth == 2) {
        int remaining1 = 28 - STmonthend;
        int remaining2 = 31 - ENmonthend;
        float total = this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice));
        return total;
      }
    }
  }
