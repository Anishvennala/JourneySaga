class Cost{
  
//Variables
  String  budget;
  int numPeople,duration;
  
//Constructor
//Cost(number of people on the trip, duration of the trip)
  Cost(int NumPeople,int Duration){
    this.numPeople = NumPeople;
    this.duration = Duration; 
  }
  
  float finalCost(City c) {
    float total = this.numPeople * 1.25 * (c.hotelPrice * duration + c.travelPrice);
    return total;
  }
}
