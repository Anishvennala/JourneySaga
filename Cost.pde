class Cost{
  //the total cost will fluctutate depending on the time, duration, and number of people
//Variables
  String  budget;
  int numPeople,duration;
  
//Constructor
//Cost(number of people on the trip, duration of the trip)
  Cost(int NumPeople,int Duration){
    this.numPeople = NumPeople;
    this.duration = Duration; 
  }
  
  void finalCost(City c) {
    float total = this.numPeople * 1.25 * (c.hotelPrice * this.duration + c.travelPrice);
    println("the cost of the trip to",c.name,"is","$"+total);

  }
}
