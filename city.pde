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
  int locX;
  int locY;

  City(String a, String b, String c, float d, String e, float f, String g, float h, String i, float j, String k, float l, String m, float n, String o, float p, String q,int r,int s){    
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
    this.locX = r;
    this.locY = s;
    
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
    
    println("You could go to " + this.name + ", " + this.country, ". The hotel we would suggest is, " + hotel + "for $" + hotelPrice + " a night. We would suggest traveling through " + travel + " for $" + travelPrice + " round trip");
  }
  
}
