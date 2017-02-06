//Init

import static javax.swing.JOptionPane.*;
import g4p_controls.*;



//Fonts:

String[] Fonts = {"MainThought", "Main"};



//Fonts
PFont Lucida;


//Game fonts
PFont MainThought;
PFont Main;



//Font values
int CurrentFont = 0;
PFont CurrentFont2 = MainThought;
int fontpagenumber = 1;
int allowedfontpagenumbers = 1;



//Export path.
String ExportPath = "Messages.msg";




//Always True
boolean PlayingMessage;

//Mouse boolean
boolean mouse = false;

//First run
boolean firstrun = true;

//TextBox
PImage TextBox;

//Lock mouse for buttons
boolean mouselock;

//Export (Save)
String File = "null";

//Boolean to stop text
boolean textstop;

//Key booleans
boolean x;
boolean z;

//A and S to change pages.
boolean a;
boolean s;


//Key delay - to delay keys;
boolean keydelay;


//Text Positions
float textx = 0;
float texty = 0;

//Text Other
int textchars = 1;





//Message value from file
String[] Message;


//Message Values

//Will be displayed.
String[] Messages = new String[1000];

//Temporary
String[] TempMessage = new String[1000];

//Will be edited.
String[] RawMessages = new String[1000];

//To store values for lines and pages.
int[] textstops = new int[1000];
int[] newpages = new int[1000];



//Timers
float texttimer = 0;


//Floats for ID positions.

float idx;
float idy;

//Floats for Text positions.

float tex;
float tey;


//Floats for alternating rectangle position.
float rectx;
float recty;



//Current Message - Used to change preview.
int CurrentMessage = 0;


//Page number for message selection. 20 messages per page.
int pagenumber = 1; 


//Allowed page numbers.
int allowedpagenumbers;



//Setup
void setup() {

  //Screen
  size(1000, 600);
  
  //Title
  surface.setTitle("Super Edititor of Xtreme Text (S.E.X.T.)");


  //TextBox
  TextBox = loadImage("TextBox.xmg", "png");
  TextBox.resize(867, 186);
  
  
  
  
  
  
  
  
  
  
  
  //Fonts
  
  //Load Fonts
  MainThought = createFont("txr/Thought/INVASION2000.TTF", 50);
  Main = createFont("txr/Main/Pixellari.ttf", 60);
  Lucida = createFont("txr/Main/Lucida.ttf", 12);
  

  CurrentFont2 = MainThought;

}






//Loop
void draw() {
  
  try {
  
  background(0);

  //Allow Text to be centered
  textAlign(CENTER);
  textFont(Lucida);
  textSize(12);
  
  //Set Up Docks
  noStroke();
  fill(193, 191, 191);
  rect(0, 0, 1000, 600);
  
  //Run check font
  CheckFont();


  //Buttons  
  LoadButton(30, 30, 60, 50);
  ExportButton(30, 100, 60, 50);
  NewButton(30, 100, 60, 50);
  SaveButton(30, 30, 60, 50);
  DeleteButton(85 + 12.5 + 60, 540, 60, 50);
  AddButton(30 + 12.5, 540, 60, 50);
  EditButton(470, 540, 60, 50);
  


  //TextBox
  PlayingMessage = true;
  TextBox();
  
  
  //Messages
  if (!firstrun) {
    
    //Limit page numbers to only ones that have messages.
    allowedpagenumbers = (RawMessages.length-2)/40+1;
    
    //Load da messages into the editor.
    LoadMessages();
   
     //Run after startinga a file.
     if (CurrentMessage != 0) {LoadMessage(CurrentMessage, "debug", CurrentFont2); } else {
     
       //Block editing Initializer
       CharacterFaces("debug");
       textFont(Main);
       textAlign(LEFT);
       textSize(55);
       fill(255);
       text("Editing Initializer Blocked", 100+234, 37/4+63);
       text("By Root (I.S.)", 130+234, 37/4+63+55);
       text("                     :D", 200+234, 37/4+63+75);
     
     }
     

     

  }
  
  
  
  //Run Guage
  Guage();
  
  //Debug Pages
  //println(allowedpagenumbers);
  
  
  
  } catch (ArrayIndexOutOfBoundsException e) {
    
    CurrentMessage = 0;
  
    background(0);

  //Allow Text to be centered
  textAlign(CENTER);
  textFont(Lucida);
  textSize(12);
  
  //Set Up Docks
  noStroke();
  fill(193, 191, 191);
  rect(0, 0, 1000, 600);


  //Buttons  
  LoadButton(30, 30, 60, 50);
  ExportButton(30, 100, 60, 50);
  NewButton(30, 100, 60, 50);
  SaveButton(30, 30, 60, 50);
  DeleteButton(85 + 12.5 + 60, 540, 60, 50);
  AddButton(30 + 12.5, 540, 60, 50);
  EditButton(470, 540, 60, 50);
  


  //TextBox
  PlayingMessage = true;
  TextBox();
  
  
  //Messages
  if (!firstrun) {
    
    //Limit page numbers to only ones that have messages.
    allowedpagenumbers = (RawMessages.length-2)/40+1;
    
    //Load da messages into the editor.
    LoadMessages();
   
     //Run after startinga a file.
     if (CurrentMessage != 0) {LoadMessage(CurrentMessage, "debug", CurrentFont2); } else {
     
       //Block editing Initializer
       CharacterFaces("debug");
       textFont(Main);
       textAlign(LEFT);
       textSize(55);
       fill(255);
       text("Editing Initializer Blocked", 100+234, 37/4+63);
       text("By Root (I.S.)", 130+234, 37/4+63+55);
       text("                     :D", 200+234, 37/4+63+75);
     
     }
     

     

  }
  
  
  
  //Run Guage
  Guage();
  
  //Debug Pages
  //println(allowedpagenumbers);
  
  }
  
  

}





//Load Msg file.
void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
    mouselock = false;
    

  } else {
    println("User selected " + selection.getAbsolutePath());
    //Load Msg File Into an actual map.
    
    //Load file.
    File = selection.getAbsolutePath();
    //Load file to a variable to load into Messages[]
    Message = loadStrings(selection.getAbsolutePath());
    //TempMessage will now copy Message.
    TempMessage = Message;
    //Initialize RawMessages
    RawMessages = TempMessage;
    
    //println(allowedpagenumbers);
    
    //For sanity reasons.
    mouselock = false;
   
   //Panic! - Will suicide if user fucks up somehow.
    if (firstrun == false) {exit();}
    
    firstrun = false;
    
  }
}





void SaveAs(File selection) {


if (selection == null) {
    println("Window was closed or the user hit cancel.");
    mouselock = false;



} else {
    println("User selected " + selection.getAbsolutePath());
    //Load Msg File Into an actual map.
    
    //Load file.
    ExportPath = selection.getAbsolutePath();
    
    //println(ExportPath);
    Export(false);
    
    //println(allowedpagenumbers);
    
    //For sanity reasons.
    mouselock = false;
   
 
}
}