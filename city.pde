//City class
class City {
 
  String name;
  String country;
  String language;
  float temperature;
  String hotelOneName;
  float hotelOnePrice;
  String hotelTwoName;
  float hotelTwoPrice;
  String hotelThreeName;
  float hotelThreePrice;
  String travelOneName;
  float travelOnePrice;
  String travelTwoName;
  float travelTwoPrice;
  String travelThreeName;
  float travelThreePrice; 
  String funFacts;
  String hotel;
  float hotelPrice;
  String travel;
  float travelPrice;

  City(String a, String b, String c, float d, String e, float f, String g, float h, String i, float j, String k, float l, String m, float n, String o, float p, String q){    
    this.name = a;
    this.country = b;
    this.language = c;
    this.temperature = d;
    this.hotelOneName = e;
    this.hotelOnePrice = f;
    this.hotelTwoName = g;
    this.hotelTwoPrice = h;
    this.hotelThreeName = i;
    this.hotelThreePrice = j;
    this.travelOneName = k;
    this.travelOnePrice = l;
    this.travelTwoName = m;
    this.travelTwoPrice = n;
    this.travelThreeName = o;
    this.travelThreePrice = p;
    this.funFacts = q;  
    this.hotel = null;
    this.hotelPrice = 0;
    this.travel = null;
    this.travelPrice = 0;
    
  }
  
  void vacayInfo(String budget){
    if (budget == "$$$"){
      this.hotel = this.hotelThreeName;
      this.hotelPrice = this.hotelThreePrice;
      this.travel = this.travelThreeName;
      this.travelPrice = this.travelThreePrice;
    }
    
    else if (budget == "$$"){
      this.hotel = this.hotelTwoName;
      this.hotelPrice = this.hotelTwoPrice;
      this.travel = this.travelTwoName;
      this.travelPrice = this.travelTwoPrice;    
    }
    
    else if (budget == "$"){
      this.hotel = this.hotelOneName;
      this.hotelPrice = this.hotelOnePrice;
      this.travel = this.travelOneName;
      this.travelPrice = this.travelOnePrice;      
    }
    
    println("You are going to " + this.name + ", " + this.country, ". You are staying at " + hotel + "for $" + hotelPrice + " a night. You are getting there through " + travel + " for $" + travelPrice);
  }
  
}
