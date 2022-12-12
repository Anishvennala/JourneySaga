/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:776741:
  appc.background(230);
} //_CODE_:window1:776741:

public void date1Changed(GTextField source, GEvent event) { //_CODE_:date1:955750:
  startDate = date1.getText();
} //_CODE_:date1:955750:

public void tempSliderChanged(GSlider source, GEvent event) { //_CODE_:tempSlider:201894:
  temp = tempSlider.getValueF();
} //_CODE_:tempSlider:201894:

public void startButtonClicked(GButton source, GEvent event) { //_CODE_:startButton:297293:
  start =! start;
} //_CODE_:startButton:297293:

public void vacationTypeChanged(GDropList source, GEvent event) { //_CODE_:vacationTypeList:754772:
  typeVacation = vacationTypeList.getSelectedText();
} //_CODE_:vacationTypeList:754772:

public void englishBoxClicked(GCheckbox source, GEvent event) { //_CODE_:englishBox:524859:
  engLanguage =! engLanguage;
} //_CODE_:englishBox:524859:

public void budgetTypeChanged(GDropList source, GEvent event) { //_CODE_:budgetTypeList:831911:
  budget = budgetTypeList.getSelectedText();
} //_CODE_:budgetTypeList:831911:

public void date2Changed(GTextField source, GEvent event) { //_CODE_:date2:313793:
  endDate = date2.getText();
} //_CODE_:date2:313793:

public void peopleNumChanged(GDropList source, GEvent event) { //_CODE_:peopleNum:348284:
  numPeople = int(peopleNum.getSelectedText());
} //_CODE_:peopleNum:348284:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 300, 650, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  date1 = new GTextField(window1, 149, 320, 120, 30, G4P.SCROLLBARS_NONE);
  date1.setText("01/22");
  date1.setPromptText("MM/DD");
  date1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  date1.setOpaque(true);
  date1.addEventHandler(this, "date1Changed");
  tempSlider = new GSlider(window1, 10, 104, 184, 60, 10.0);
  tempSlider.setShowValue(true);
  tempSlider.setShowLimits(true);
  tempSlider.setLimits(0, -50, 50);
  tempSlider.setNbrTicks(8);
  tempSlider.setShowTicks(true);
  tempSlider.setNumberFormat(G4P.INTEGER, 0);
  tempSlider.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  tempSlider.setOpaque(false);
  tempSlider.addEventHandler(this, "tempSliderChanged");
  startButton = new GButton(window1, 5, 7, 80, 30);
  startButton.setText("START");
  startButton.addEventHandler(this, "startButtonClicked");
  vacationTypeList = new GDropList(window1, 53, 183, 90, 80, 3, 10);
  vacationTypeList.setItems(loadStrings("list_754772"), 0);
  vacationTypeList.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  vacationTypeList.addEventHandler(this, "vacationTypeChanged");
  englishBox = new GCheckbox(window1, 27, 224, 155, 36);
  englishBox.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  englishBox.setText("English Speaking Country");
  englishBox.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  englishBox.setOpaque(false);
  englishBox.addEventHandler(this, "englishBoxClicked");
  budgetTypeList = new GDropList(window1, 56, 285, 90, 80, 3, 10);
  budgetTypeList.setItems(loadStrings("list_831911"), 0);
  budgetTypeList.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  budgetTypeList.addEventHandler(this, "budgetTypeChanged");
  label1 = new GLabel(window1, 10, 91, 187, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Temperature Slider");
  label1.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  label1.setOpaque(false);
  date2 = new GTextField(window1, 149, 367, 120, 30, G4P.SCROLLBARS_NONE);
  date2.setText("03/10");
  date2.setPromptText("Enter: MM/DD");
  date2.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  date2.setOpaque(true);
  date2.addEventHandler(this, "date2Changed");
  date1Label = new GLabel(window1, 10, 321, 136, 20);
  date1Label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  date1Label.setText("Arrival Date(MM/DD):");
  date1Label.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  date1Label.setOpaque(false);
  date2Label = new GLabel(window1, 7, 367, 141, 20);
  date2Label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  date2Label.setText("Departure Date(MM/DD):");
  date2Label.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  date2Label.setOpaque(false);
  peopleNum = new GDropList(window1, 54, 409, 90, 220, 10, 10);
  peopleNum.setItems(loadStrings("list_348284"), 0);
  peopleNum.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  peopleNum.addEventHandler(this, "peopleNumChanged");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GTextField date1; 
GSlider tempSlider; 
GButton startButton; 
GDropList vacationTypeList; 
GCheckbox englishBox; 
GDropList budgetTypeList; 
GLabel label1; 
GTextField date2; 
GLabel date1Label; 
GLabel date2Label; 
GDropList peopleNum; 