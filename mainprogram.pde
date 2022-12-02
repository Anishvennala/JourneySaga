//This is the main program file
City rec1;
City rec2;
City rec3;
City paris;
City yosemite;
City stMoritz;
City auckland;
City sydney;
City mexicoCity;
City parga;
City skaftafell;
City soufriere;
float temp;
boolean engLanguage;
String typeVacation;
int duration;
int duration;
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
  
    paris = new City("Paris", "France", "French", 20, "Hôtel de l'Europe", 71, "Yooma Urban Lodge Eiffel", 170, "Hotel Grand Powers", 919, "travel1", 1, "travel2", 2, "travel3", 3, "blah blah");
    Cost newCost = new Cost( numPeople, duration);
    newCost.finalCost(paris);
}

void calcDuration(String startDate, String endDate){
  int [] days = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};  //index of month = month - 1
  String strMonth1 = startDate.substring(0,2); 
  String strMonth2 = endDate.substring(0,2);
  int month1, month2, day1, day2;  //undefined variables
  
  //start month
  if(int(strMonth1.substring(0)) == 0){  //if single digit month like 01 or 07
    month1 = int(strMonth1.substring(1));
  }
  else{
    month1 = int(strMonth1);  //if double digit month like 10, 11, or 12
  }
  
  //end month
  if(int(strMonth2.substring(0)) == 0){  //if single digit month like 01 or 07
    month2 = int(strMonth2.substring(1));
  }
  else{
    month2 = int(strMonth2);  //if double digit month like 10, 11, or 12
  }
  
  //start day
  String strDay1 = startDate.substring(3,5);
  String strDay2 = endDate.substring(3,5);
  
  if(int(strDay1.substring(0)) == 0){  //if single digit month like 01 or 07
    day1 = int(strDay1.substring(1));
  }
  else{
    day1 = int(strDay1);  //if double digit month like 10, 11, or 12
  }
  
  //end month
  if(int(strDay2.substring(0)) == 0){  //if single digit month like 01 or 07
    day2 = int(strDay2.substring(1));
  }
  else{
    day2 = int(strDay2);  //if double digit month like 10, 11, or 12
  }
    
  //calculating duration 
  if(month2 - month1 == 0){  //same month and same year
    duration = day2 - day1;
  }
  if(month2 - month1 == 1 && month1 < month2){  //goes into next month and same year
    duration = (days[month1 -1] - day1) + day2;  //adding leftover days in starting month to days in final month
  }
  if(month2 - month1 > 1 && month1 < month2){ //more than one month difference and same year
    int a = days[month1 - 1] - day1;
    int b = 0;
    for(int i = 0; i < month2-month1-1; i++){
      b = b + days[month1 + i];
    }
    duration = a + b + day2;
  }
  
  if(month1 > month2){  //second date goes into next year
    if(month2+12 - month1 == 1){  //dec to jan
      duration = (days[month1-1] - day1) + day2;
    }  
    if(month2+12 - month1 > 1){  //11.05 to 2.22
      int a = days[month1 - 1] - day1;
      int b = 0;
      int c = 0;
      for(int i = 0; i < 12 - month1; i++){
        b = b + days[month1+i];
      }
      for(int i = 0; i < month2-1; i++){  //0 < 1
        c = c + days[i];
      }
      duration = a + b + c + day2;
    }
  }
  
  println("duration:", duration);
}

void getRec(float temp, boolean engLanguage, String typeVacation){
  if (typeVacation == "adventerous"){
    if (engLanguage == true){
      rec1 = yosemite;      
    }
    
    else if (engLanguage == false) {
      if (temp > 20){
        rec1 = yosemite;
        rec2 = auckland;
        rec3 = stMoritz;
      }
      
      else if (temp < 10){
        rec1 = stMoritz;
        rec2 = auckland;
        rec3 = yosemite;
      }
      
      else{
        rec1 = auckland;
        rec2 = yosemite;
        rec3 = stMoritz;
      }
    }
  }
  else if (typeVacation == "tourist"){
    if (engLanguage == true){
      rec1 = sydney;      
    }
    
    else if (engLanguage == false) {  
      if (temp > 20){
        rec1 = mexicoCity;
        rec2 = sydney;
        rec3 = paris;
      }
      
      else if (temp < 10){
        rec1 = paris;
        rec2 = sydney;
        rec3 = mexicoCity;
      }
      
      else{
        rec1 = sydney;
        rec2 = paris;
        rec3 = mexicoCity;
      }
    }
  }
  
    else if (typeVacation == "luxury"){
    if (engLanguage == true){
      rec1 = soufriere;      
    }
    
    else if (engLanguage == false) {  
      if (temp > 20){
        rec1 = soufriere;
        rec2 = parga;
        rec3 = skaftafell;
      }
      
      else if (temp < 10){
        rec1 = skaftafell;
        rec2 = parga;
        rec3 = soufriere;
      }
      
      else{
        rec1 = parga;
        rec2 = soufriere;
        rec3 = skaftafell;
      }
    }
  }
  println(rec1, rec2, rec3);
}
