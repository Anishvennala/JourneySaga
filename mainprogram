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
float temp;
String budget;
boolean engLanguage = false;
boolean start = false;
String typeVacation;
int duration;
String startDate;  //(month/day)
String endDate;    //(month/day)
int numPeople; 
  
  
//Window (Font, image, etc ...)
PFont rec;
PImage img;
PGraphics pg;

void setup(){
///window///
  size(1600,800);
  createGUI();
  //text
  rec = createFont("Arial",16,true);
  
  //image
  img = loadImage("worldMap.png");
  pg = createGraphics(10,10);
  
  //variables that gui will use later
  //temp = 20;
  
  //  City(String city, String country, String lang, float temp, String hotel one name, float hotel one price, String hotel two name, float hotel two price, 
  //  String hotel three name, float hotel three price, String travel one name, float travel one price, String travel two name, float travel two price, 
  //  String travel three price, float travel three name, String fun fact)    


 //paris (800,180) stMoritz(850,180) Auckland(1580,550) Yosemite(280,200) MexicoCity (350,300) Sydney(1460,550) Sourfriere(500,340) Skaftafell(700,100) Parga(1100,220)
  paris = new City("Paris", "France", "French", 20, "Hôtel de l'Europe", 71, "Yooma Urban Lodge Eiffel", 170, "Hotel Grand Powers", 919, "Aer Lingus", 569, "Air Canada", 3820, "Air France", 16092, "Paris is often called La Ville Lumière, the City of Light. There are 1,665 steps to the top of the Eiffel Tower. Paris is referred to as the city of light.",800,180);
  stMoritz = new City("St. Moritz", "Switzerland", "German", 20, "St. Moritz Youth Hostel", 86, "Berghotel Randolins", 225, "Grand Hotel des Bains Kempinski St Moritz", 1029, "Air Canada", 2850, "Air Canada", 4057, "Air France", 15395, "is a ski resort in the Engadine valley in Switzerland. Saint Moritz is a ski resort in the Engadine valley in Switzerland.",850,180);
  auckland = new City("Auckland", "New Zealand", "English", 20, "Auckland Airport Kiwi Hotel", 86 ,"Travelodge Hotel Auckland Wynyard Quarter", 190, "The Hotel Britomart", 447, "West Jet", 2228, "Emirates", 3226, "United Airlines", 24600, "Over 50 volcanoes in the city of Auckland. You can walk from the Pacific Ocean to the Tasman Sea in just four hours.",1580,550);
  yosemite = new City("Yosemite", "U.S.A.", "English", 20, "Yosemite Bug Rustic Mountain Resort", 81, "Evergreen Lodge at Yosemite ", 154, "The Ahwahnee", 510, "Air Canada", 734, "United Airlines", 1259, "United Airlines", 3355, "Yosemite granite rock formations glow like fire at sunset. The environment supports more than 400 species.",280,200);
  mexicoCity = new City("Mexico City", "Mexico", "Spansih", 20, "Gran Hotel Ciudad De Mexico ", 70, "Zocalo Central ", 157, "Sofitel Mexico City Reforma", 412, "United Airlines", 750, "Delta", 966, "United Airlines", 1161, "More than 150 museums.  The only Royal Castle in the Americas.",350,300);
  sydney = new City("Sydney", "Australia", "English", 20, "The Capsule Hotel", 57, "Rydges World Square Sydney", 183, "The Fullerton Hotel Sydney", 326, "Quantas Airways", 2109, "Korean Air", 3598, "Delta", 16679, "Has more than 100 beaches. The biggest natural harbour in the world.",1460,550);
  soufriere = new City("Soufriere", "St. Lucia", "English", 20, "Alfred's Diamond Villas", 79, "Pierre & Vacances Villages Sainte Luce", 149, "Rabot Hotel From Hotel Chocolat", 560, "Aer Canada", 1073, "Caribbean", 2484, "American", 8107, "World's only drive-in volcano in the world.",500,340);
  skaftafell = new City("Skatfell", "Iceland", "Icelandic", 20, "Nypugardar Guesthouse", 96, "Hotel Laki", 178, "Fosshotel Nupar", 390, "Icelandair", 622, "Air Canada", 711, "British Airways", 2065, "Country is 70% covered in rainforest. 180 species of bird.",700,100);
  parga = new City("Parga", "Greece", "Greek", 20, "Kiperi Exclusive", 49, "Villa Angelika", 128, "Angelika Elegant Hotel", 138, "Air Canada", 138, "Aegean", 2043, "Emirates", 3399, "Most popular holiday destination is Parga.  Parga is known for its natural environment.",1100,220);
  rec1 = paris;
  rec2 = auckland;
  rec3 = parga;
  
  if(start == true){
    paris.vacayInfo(budget);
    calcDuration(startDate, endDate);
    Cost newCost = new Cost(numPeople, duration);
    newCost.finalCost(paris);
    getRec(temp, engLanguage, typeVacation, budget);
  }
  
  
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
  
  println("duration:", duration, "days.");
}


void getRec(float temp, boolean engLanguage, String typeVacation, String budget){
  
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
  
  else{
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

void draw(){
  
  if(start == true){
    println("typeVaction:", typeVacation, "temp:", temp, "engLanguage:", engLanguage, "budget:", budget, startDate, endDate, duration, numPeople);
    
    background(0);
    //MAP
    pg.beginDraw();
    pg.stroke(255);
    pg.line(20, 20, mouseX, mouseY);
    pg.endDraw();
    image(img,0,0,width/(width/1600),height/(height/800)); 
  //Anything on TOP of MAP should be WRITTEN AFTER this LINE//
    textFont(rec,100);
    fill(0);
    text("Test 101",10,100);
    //GIRD//
    //for (int x = 0;x<width;x=x+10){
    //  for(int y = 0; y<height;y=y+10){
    //  noFill();
    //  if(x%100 == 0){
    //    if(y%100 ==0){
    //    fill(255,0,0);
    //    rect(x,y,10,10);
    //    }
    //  }
    //  rect(x,y,10,10);
    //  }
    //}
    stroke(0);
    fill(255,0,0);
    circle(paris.locX,paris.locY,10);
  }
  
}
