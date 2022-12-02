class Cost{
  
//Variables
  String  budget;
  int numPeople,duration;
  //float total;
  
//Constructor
//Cost(number of people on the trip, duration of the trip)
  Cost(int NumPeople,int Duration){
    this.numPeople = NumPeople;
    this.duration = Duration; 
    //this.total = 0;
  }
  
  void finalCost(City c) {
    float total = this.numPeople * 1.25 * (c.hotelPrice * this.duration + c.travelPrice);
    println("the cost of the trip to",c.name,"is","$"+total);

  }
}
