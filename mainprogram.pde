import g4p_controls.*;


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
String startLocation;
float temp;
int numRooms;
String budget;
boolean engLanguage = false;
boolean start = false;
String typeVacation;
int duration;
String startDate;  //(month/day)
String endDate;    //(month/day)
int numPeople;
String total;
City finalRec;


//Window (Font, image, etc ...)
PFont rec;
PImage img;
PGraphics pg;

void setup() {
  ///window///
  startLocation = "Toronto";
  //pre-set values before GUI
  typeVacation = "adventerous";
  numPeople = 1;
  temp = 0;
  numRooms = 1;
  engLanguage = false;
  budget = "$";
  startDate = "01/22";
  endDate = "03/10";

  //create window and gui
  size(1600, 800);
  createGUI();
  //text
  rec = createFont("Arial", 16, true);

  //image
  img = loadImage("worldMap.png");
  pg = createGraphics(10, 10);

  //variables that gui will use later
  //temp = 20;

  //  City(String city, String country, String lang, float temp, String hotel one name, float hotel one price, String hotel two name, float hotel two price,
  //  String hotel three name, float hotel three price, String travel one name, float travel one price, String travel two name, float travel two price,
  //  String travel three price, float travel three name, String fun fact)


  //paris (800,180) stMoritz(850,180) Auckland(1580,550) Yosemite(280,200) MexicoCity (350,300) Sydney(1460,550) Sourfriere(500,340) Skaftafell(700,100) Parga(1100,220)
  paris = new City("Paris", "France", "French", 20, "Hôtel de l'Europe", 71, "Yooma Urban Lodge Eiffel", 170, "Hotel Grand Powers", 919, "Aer Lingus", 569, "Air Canada", 3820, "Air France", 16092, "  -Paris is often called La Ville Lumière, the City of Light. \n  -There are 1,665 steps to the top of the Eiffel Tower.", 800, 180);
  stMoritz = new City("St. Moritz", "Switzerland", "German", 20, "St. Moritz Youth Hostel", 86, "Berghotel Randolins", 225, "Grand Hotel des Bains Kempinski St Moritz", 1029, "Air Canada", 2850, "Air Canada", 4057, "Air France", 15395, "  -Saint Moritz is a ski resort in the Engadine valley in Switzerland. \n  -They hosdted the olympics in 1928 and 1948", 850, 180);
  auckland = new City("Auckland", "New Zealand", "English", 20, "Auckland Airport Kiwi Hotel", 86, "Travelodge Hotel Auckland Wynyard Quarter", 190, "The Hotel Britomart", 447, "West Jet", 2228, "Emirates", 3226, "United Airlines", 24600, "  -There are 50 volcanoes in the city of Auckland. \n  -You can walk from the Pacific Ocean to the Tasman Sea in just four hours.", 1580, 560);
  yosemite = new City("Yosemite", "U.S.A.", "English", 20, "Yosemite Bug Rustic Mountain Resort", 81, "Evergreen Lodge at Yosemite ", 154, "The Ahwahnee", 510, "Air Canada", 734, "United Airlines", 1259, "United Airlines", 3355, "  -Yosemite granite rock formations glow like fire at sunset. \n  -The environment supports more than 400 species.", 280, 200);
  mexicoCity = new City("Mexico City", "Mexico", "Spansih", 20, "Gran Hotel Ciudad De Mexico ", 70, "Zocalo Central ", 157, "Sofitel Mexico City Reforma", 412, "United Airlines", 750, "Delta", 966, "United Airlines", 1161, "  -The city has more than 150 museums.\n  -It is host to the only Royal Castle in the Americas.", 350, 300);
  sydney = new City("Sydney", "Australia", "English", 20, "The Capsule Hotel", 57, "Rydges World Square Sydney", 183, "The Fullerton Hotel Sydney", 326, "Quantas Airways", 2109, "Korean Air", 3598, "Delta", 16679, "  -Sydney has more than 100 beaches. \n  -Home to the biggest natural harbour in the world.", 1460, 550);
  soufriere = new City("Soufriere", "St. Lucia", "English", 20, "Alfred's Diamond Villas", 79, "Pierre & Vacances Villages Sainte Luce", 149, "Rabot Hotel From Hotel Chocolat", 560, "Aer Canada", 1073, "Caribbean", 2484, "American", 8107, "  - Has the world's only drive-in volcano in the world.", 500, 340);
  skaftafell = new City("Skatfell", "Iceland", "Icelandic", 20, "Nypugardar Guesthouse", 96, "Hotel Laki", 178, "Fosshotel Nupar", 390, "Icelandair", 622, "Air Canada", 711, "British Airways", 2065, "  - The country is 70% covered in rainforest. /n  -Home to 180 species of bird.", 700, 100);
  parga = new City("Parga", "Greece", "Greek", 20, "Kiperi Exclusive", 49, "Villa Angelika", 128, "Angelika Elegant Hotel", 138, "Air Canada", 138, "Aegean", 2043, "Emirates", 3399, "  -Most popular holiday destination in all of Greece. \n  -The city is famouse for known for its natural environment.", 1100, 220);
  rec1 = paris;
  rec2 = auckland;
  rec3 = parga;
}

void calcDuration(String startDate, String endDate) {
  println("im in calcDuration");
  int [] days = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};  //index of month = month - 1
  String strMonth1 = startDate.substring(0, 2);
  String strMonth2 = endDate.substring(0, 2);
  int month1, month2, day1, day2;  //undefined variables

  //start month
  if (int(strMonth1.substring(0)) == 0) {  //if single digit month like 01 or 07
    month1 = int(strMonth1.substring(1));
  } else {
    month1 = int(strMonth1);  //if double digit month like 10, 11, or 12
  }

  //end month
  if (int(strMonth2.substring(0)) == 0) {  //if single digit month like 01 or 07
    month2 = int(strMonth2.substring(1));
  } else {
    month2 = int(strMonth2);  //if double digit month like 10, 11, or 12
  }

  //start day
  String strDay1 = startDate.substring(3, 5);
  String strDay2 = endDate.substring(3, 5);

  if (int(strDay1.substring(0)) == 0) {  //if single digit month like 01 or 07
    day1 = int(strDay1.substring(1));
  } else {
    day1 = int(strDay1);  //if double digit month like 10, 11, or 12
  }

  //end month
  if (int(strDay2.substring(0)) == 0) {  //if single digit month like 01 or 07
    day2 = int(strDay2.substring(1));
  } else {
    day2 = int(strDay2);  //if double digit month like 10, 11, or 12
  }

  //calculating duration
  if (month2 - month1 == 0) {  //same month and same year
    duration = day2 - day1;
  }
  if (month2 - month1 == 1 && month1 < month2) {  //goes into next month and same year
    duration = (days[month1 -1] - day1) + day2;  //adding leftover days in starting month to days in final month
  }
  if (month2 - month1 > 1 && month1 < month2) { //more than one month difference and same year
    int a = days[month1 - 1] - day1;
    int b = 0;
    for (int i = 0; i < month2-month1-1; i++) {
      b = b + days[month1 + i];
    }
    duration = a + b + day2;
  }

  if (month1 > month2) {  //second date goes into next year
    if (month2+12 - month1 == 1) {  //dec to jan
      duration = (days[month1-1] - day1) + day2;
    }
    if (month2+12 - month1 > 1) {  //11.05 to 2.22
      int a = days[month1 - 1] - day1;
      int b = 0;
      int c = 0;
      for (int i = 0; i < 12 - month1; i++) {
        b = b + days[month1+i];
      }
      for (int i = 0; i < month2-1; i++) {  //0 < 1
        c = c + days[i];
      }
      duration = a + b + c + day2;
    }
  }

  println("duration:", duration, "days.");
}


void getRec(float temp, boolean engLanguage, String typeVacation, String budget) {

  if (typeVacation == "adventerous") {
    if (engLanguage == true) {
      rec1 = yosemite;
    } else if (engLanguage == false) {
      if (temp > 20) {
        rec1 = yosemite;
        rec2 = auckland;
        rec3 = stMoritz;
      } else if (temp < 10) {
        rec1 = stMoritz;
        rec2 = auckland;
        rec3 = yosemite;
      } else {
        rec1 = auckland;
        rec2 = yosemite;
        rec3 = stMoritz;
      }
    }
  } else if (typeVacation == "tourist") {
    if (engLanguage == true) {
      rec1 = sydney;
    } else if (engLanguage == false) {
      if (temp > 20) {
        rec1 = mexicoCity;
        rec2 = sydney;
        rec3 = paris;
      } else if (temp < 10) {
        rec1 = paris;
        rec2 = sydney;
        rec3 = mexicoCity;
      } else {
        rec1 = sydney;
        rec2 = paris;
        rec3 = mexicoCity;
      }
    }
  } else if (typeVacation == "luxury") {
    if (engLanguage == true) {
      rec1 = soufriere;
    } else if (engLanguage == false) {
      if (temp > 20) {
        rec1 = soufriere;
        rec2 = parga;
        rec3 = skaftafell;
      } else if (temp < 10) {
        rec1 = skaftafell;
        rec2 = parga;
        rec3 = soufriere;
      } else {
        rec1 = parga;
        rec2 = soufriere;
        rec3 = skaftafell;
      }
    }
  } else {
    rec1 = paris;
    rec2 = soufriere;
    rec3 = skaftafell;
  }
  //println("1. " + str(rec1.vacayInfo(budget)) + "\n" + "2. " + str(rec2.vacayInfo(budget)) + "\n" + "3. " + str(rec3.vacayInfo(budget)));
  println();
  rec1.vacayInfo(budget);
  rec2.vacayInfo(budget);
  rec3.vacayInfo(budget);
}

void draw() {
  calcDuration(startDate, endDate);
  getRec(temp, engLanguage, typeVacation, budget);

  if (start == true) {

    totalCost(rec1);
    totalCost(rec2);
    totalCost(rec3);
    // println("typeVaction:", typeVacation, "temp:", temp, "engLanguage:", engLanguage, "budget:", budget, startDate, endDate, duration, numPeople, numRooms);
    //println(startDate, endDate, duration);

    background(0);
    //MAP
    pg.beginDraw();
    pg.stroke(255);
    pg.line(20, 20, mouseX, mouseY);
    pg.endDraw();
    image(img, 0, 0, width/(width/1600), height/(height/800));
    //Anything on TOP of MAP should be WRITTEN AFTER this LINE//
    textFont(rec, 100);
    fill(0);
    stroke(0);
    fill(255, 0, 0);
    circle(rec1.locX, rec1.locY, 10);
    circle(rec2.locX, rec2.locY, 10);
    circle(rec3.locX, rec3.locY, 10);
    //println(mouseX,mouseY);
    Cityinfo(mouseX, mouseY);
  }
}
//THE HOTEL/PLANE costs that Megan found will be the BASE cost. DEPENDING on the month, multiply by a factor to determine the cost
//depending on the location of the departure, each airport will cost you differently: Atlanta < Seattle < NYC < Toronto < Vancouver
String totalCost(City city) {
  //////////////////////////create ELSE for every if and else ifs/////////////////////////////////////////////
  int STmonthLoco = this.startDate.indexOf("/");
  int STmonth = int(this.startDate.substring(0, STmonthLoco));
  int ENmonthLoco = this.endDate.indexOf("/");
  int ENmonth = int(this.endDate.indexOf(0, ENmonthLoco));
  int STmonthend = int(this.startDate.substring(STmonthLoco+1));
  int ENmonthend = int(this.endDate.substring(ENmonthLoco+1));


  if (STmonth == ENmonth) {
    if (STmonth == 1 || STmonth == 3 || STmonth == 6 || STmonth == 7 || STmonth == 8 || STmonth == 10 || STmonth == 12) {
      if (startLocation == "Atlanta") {
        total = "$"+str(15 +this.numPeople * duration * 1.09 * (city.hotelPrice + city.travelPrice));
        //return total;
      } else if (startLocation == "Seattle") {
        total = "$"+str(16 +this.numPeople * duration * 1.09 * (city.hotelPrice + city.travelPrice));
        //return total;
      } else if (startLocation == "New York") {
        total = "$"+str(17 +this.numPeople * duration * 1.09 * (city.hotelPrice + city.travelPrice));
        //return total;
      } else if (startLocation == "Vancouver") {
        total = "$"+str(20 +this.numPeople * duration * 1.09 * (city.hotelPrice + city.travelPrice));
        //return total;
      } else if (startLocation == "Toronto") {
        total = "$"+str(25 +this.numPeople * duration * 1.09 * (city.hotelPrice + city.travelPrice));
        println("this is the duration for toronto: "+duration);
        //return total;
      } else
      total = "Please input a valid departure location (STMonth = ENMonth error1)";
    } 
    else {///////////////////
      if (startLocation == "Atlanta") {
        total = "$"+str(15 +this.numPeople * duration * (city.hotelPrice + city.travelPrice));
        //return total;
      } else if (startLocation == "Seattle") {
        total = "$"+str(16 +this.numPeople * duration * (city.hotelPrice + city.travelPrice));
        //return total;
      } else if (startLocation == "New York") {
        total = "$"+str(17 +this.numPeople * duration * (city.hotelPrice + city.travelPrice));
        //return total;
      } else if (startLocation == "Vancouver") {
        total = "$"+str(20 +this.numPeople * duration * (city.hotelPrice + city.travelPrice));
        //return total;
      } else if (startLocation == "Toronto") {
        total = "$"+str(25 +this.numPeople * duration  * (city.hotelPrice + city.travelPrice));
        println("this is the duration for toronto: "+duration);
        //return total;
      } else
        total = "Please input a valid departure location (STMonth = ENMonth error2)";
    }
  } 
  else {//////STATEMENT TO if STMONTH == ENMONTH//////////////////////////////
    if (STmonth == 1 || STmonth == 3|| STmonth == 7 || STmonth == 8 || STmonth == 10 || STmonth == 12) {
      int remaining1 = 31 - STmonthend;
      int remaining2 = 30 - ENmonthend;
      println("This is the Startlocation Before:"+ startLocation);
      if (startLocation == "Atlanta") {
        total = "$"+str(15 +this.numPeople * (remaining1 * 1.09 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } 
      else if (startLocation == "Seattle") {
        total = "$"+str(16 +this.numPeople * (remaining1 * 1.09 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } 
      else if (startLocation == "New York") {
        total = "$"+str(17 +this.numPeople * (remaining1 * 1.09 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } 
      else if (startLocation == "Vancouver") {
        total = "$"+str(20 +this.numPeople * (remaining1 * 1.09 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } 
      else if (startLocation == "Toronto") {
        total = "$"+str(25 +this.numPeople *(remaining1 * 1.09 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        println("this is the duration for toronto: "+duration);
        //return total;
      } 
      else
        total = "Please input a valid departure location (STMonth busy error1)";
        //println("this is the startLocation: "+startLocation);/////////////MAIN ERROR line
    } else if (STmonth ==6) {//////////////////////////////////////////////////////////////
      int remaining1 = 30 - STmonthend;
      int remaining2 = 31 - ENmonthend;
      if (startLocation == "Atlanta") {
        total = "$"+str(15 +this.numPeople * (remaining1 * 1.09 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "Seattle") {
        total = "$"+str(16 +this.numPeople * (remaining1 * 1.09 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "New York") {
        total = "$"+str(17 +this.numPeople * (remaining1 * 1.09 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "Vancouver") {
        total = "$"+str(20 +this.numPeople * (remaining1 * 1.09 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "Toronto") {
        total = "$"+str(25 +this.numPeople *(remaining1 * 1.09 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        println("this is the duration for toronto: "+duration);
        //return total;
      } else
      total = "this is the error 392";
    } else if (STmonth == 4 || STmonth == 9|| STmonth == 11 ) {////////////////////////////////////////////////////////////
      int remaining1 = 30 - STmonthend;
      int remaining2 = 31 - ENmonthend;
      if (startLocation == "Atlanta") {
        total = "$"+str(15 +this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "Seattle") {
        total = "$"+str(16 +this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "New York") {
        total = "$"+str(17 +this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "Vancouver") {
        total = "$"+str(20 +this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "Toronto") {
        total = "$"+str(25 +this.numPeople *(remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        println("this is the duration for toronto: "+duration);
        //return total;
      } else
        total = "this is the error 413";
    } else if (STmonth == 5 || STmonth == 10) {/////////////////////////////////////////////////////////
      int remaining1 = 31 - STmonthend;
      int remaining2 = 30 - ENmonthend;
      if (startLocation == "Atlanta") {
        total = "$"+str(15 +this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "Seattle") {
        total = "$"+str(16 +this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "New York") {
        total = "$"+str(17 +this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "Vancouver") {
        total = "$"+str(20 +this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "Toronto") {
        total = "$"+str(25 +this.numPeople *(remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        println("this is the duration for toronto: "+duration);
        //return total;
      } else
        total = "this is the error 434";
    } else if (STmonth == 2) {/////////////////////////////////////////////////////////////////////////////////////
      int remaining1 = 28 - STmonthend;
      int remaining2 = 31 - ENmonthend;
      if (startLocation == "Atlanta") {
        total = "$"+str(15 +this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "Seattle") {
        total = "$"+str(16 +this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "New York") {
        total = "$"+str(17 +this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "Vancouver") {
        total = "$"+str(20 +this.numPeople * (remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        //return total;
      } else if (startLocation == "Toronto") {
        total = "$"+str(25 +this.numPeople *(remaining1 * (city.hotelPrice + city.travelPrice) + remaining2 * (city.hotelPrice + city.travelPrice)));
        println("this is the duration for toronto: "+duration);
        //return total;
      } else
      total = "this is the error 455";
    } else////////////////////////////////////////////////////////////////////////////////////////////////
    total = "this is the error 458";
  }
  return total;
}

void Cityinfo(int mouseX, int mouseY) {
  fill(250, 250, 250);
  textSize(20);
  if (sqrt(pow(rec1.locX - mouseX, 2 ) + pow(rec1.locY - mouseY, 2))<10) {
    //stroke(250,250,250);
    //fill(0);
    String s = (startLocation + " to " + rec1.name + "\n" + rec1.language + "\nHotel: " +rec1.hotel + " ($" + rec1.hotelPrice + " /night)" + "\nTravel: " + rec1.travel + " ($"+ rec1.travelPrice + ")" + "\nFun Facts...\n" + rec1.funFacts + "\nTotal Cost: " + totalCost(rec1));
    if (rec1.locX +100 > 1500 || rec1.locY+100 > 700) {
      fill(255);
      rect(rec1.locX-400, rec1.locY-400, 400, 400);
      fill(0);
      text(s, rec1.locX-400, rec1.locY-400, 400, 400);
      // text(s,0,0,100,300);
    } else {
      fill(255);
      rect(rec1.locX, rec1.locY, 400, 400);
      fill(0);
      text(s, rec1.locX, rec1.locY, 400, 400);
    }
  } else if (sqrt(pow(rec2.locX - mouseX, 2 ) + pow(rec2.locY - mouseY, 2))<10) {
    // stroke(250,250,250);
    //fill(0);
    String s = (startLocation + " to " + rec2.name + "\n" + rec2.language + "\nHotel: " +rec2.hotel + " ($" + rec2.hotelPrice + " /night)" + "\nTravel: " + rec2.travel + " ($"+ rec2.travelPrice + ")" + "\nFun Facts...\n" + rec2.funFacts + "\nTotal Cost: " + totalCost(rec2));
    if (rec2.locX +100 > 1500 || rec2.locY+100 > 700) {
      fill(255);
      rect(rec2.locX-400, rec2.locY-400, 400, 400);
      fill(0);
      text(s, rec2.locX-400, rec2.locY-400, 400, 400);
    } else {
      fill(255);
      rect(rec2.locX, rec2.locY, 300, 300);
      fill(0);
      text(s, rec2.locX, rec2.locY, 300, 300);
    }
  } else if (sqrt(pow(rec3.locX - mouseX, 2 ) + pow(rec3.locY - mouseY, 2))<10) {
    //stroke(250,250,250);
    //fill(0);
    String s = (startLocation+ " to " + rec3.name + "\n" + rec3.language + "\nHotel: " +rec3.hotel + " ($" + rec3.hotelPrice + " /night)" + "\nTravel: " + rec3.travel + " ($"+ rec3.travelPrice + ")" + "\nFun Facts...\n" + rec3.funFacts + "\nTotal Cost: " + totalCost(rec3));
    if (rec3.locX +100 > 1500 || rec3.locY+100 > 700) {
      fill(255);
      rect(rec3.locX-400, rec3.locY-400, 400, 400);
      fill(0);
      text(s, rec3.locX-400, rec3.locY-400, 400, 400);
      //text(s,1500,0,1600,100);
    } else {
      fill(255);
      rect(rec3.locX, rec3.locY, 400, 400);
      fill(0);
      text(s, rec3.locX, rec3.locY, 400, 400);
    }
  }
}
