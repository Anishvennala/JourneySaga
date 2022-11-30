//This is the main program file
void setup(){
  //variables that gui will use later
  float temp = 20;
  String startDate = "01/22";  //(month/day)
  String endDate = "02/10";    //(month/day)
  int numPeople = 3; 
  String language = "English";  //uppercase
  String budget = "$"; //$/$$/$$$  (cheap, average, luxery)
  String typeVacation = "tourist";  //adventerous, tourist, lux
  
  //  City(String city, String country, String lang, float temp, String hotel one name, float hotel one price, String hotel two name, float hotel two price, 
  //  String hotel three name, float hotel three price, String travel one name, float travel one price, String travel two name, float travel two price, 
  //  String travel three price, float travel three name, String fun fact) 
  
  City newCity = new City(temp, startDate, endDate, numPeople, language, priceRange, typeVacation);

  
}
