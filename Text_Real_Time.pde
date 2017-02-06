//Text, for all purposes. This is one of the most complicated functions. As easy as it sounds, this took me days to fucking code.

//Program to transform messages into an array of letters. Loads messages from messages.arc

//TODO: SAVE TO ARRAY VALUES OF MESSAGES ALREADY PLAYED. ALSO, MAKE ANIMATION TO NEXT PAGE, AND PAUSES.

//Save coded messages from Messages.msg into an actual readable array called Messages.arc.


void LoadMessages() {

  //Save Message file into string array.
  TempMessage = Message;  
  
  //Make sure editing the RawMessages will actually apply to the display.
  TempMessage = RawMessages;
  
  //Prevent Crashing. Kinda failed though.
  try {
  
  //Load message IDs into game.
  for (int i = 4 ; i < TempMessage.length-2; i+=2) {
    
    //Make message 0 the initializer, and prevent null on Message 1.
    Messages[0] = TempMessage[2];
    Messages[1] = TempMessage[4];
    
    
    //Will give Messages every other message, since a message ID is before every message.
    Messages[i/2] = TempMessage[i+2];
    
    //Debug a message.
    //println(Messages[0]);
   
  }    
  
  
  //These statements prevent crashing and shit.
  } catch (NullPointerException e) {
  
    e.printStackTrace();
    Messages = null;
    
    
    
  
  }
  
  

}








//Load a requested message. Game will complain if the message value requested does not exist. Before using, you must set PlayingMessage to true.
 
//Parameters: (Message Id, Face, Font) Ex: (1, TutFace, Main)
void LoadMessage(int messageid, String face, PFont cfont) {
  
  //Only if message is playing.
  if (PlayingMessage) {

  //Define Words, to hold all the letters in the loaded message.
  String[] Words = null;
  
  //Define Variable To Hold On To All Characters in the game.
  String[] ReadChars = new String[100];
  
  //Prevent crashes for undefined texts.
  try {
  
  //Split each message into seperate letters stored in words. 
  Words = split(Messages[messageid], ".");
  //Put All letters from initializer into another String Array, which will be used to test for what letters each message has..
  ReadChars = split(Messages[0], ".");
  
  
  
  
  } catch (NullPointerException e) {
  
    e.printStackTrace();
    Words = null;
    
    
  
  }
  //try {
  if (Words != null) {
  
    //Debug Text Message.
    //println(Words);
  


  


   //Now time to actually display the message.
   
   
   
    //Debug Rect
    //fill(0);
    //rect(0, 0, 10000, 10000);
    
    
    
    //Debug Rectangle Image
    //fill(0, 0, 255);
    //rect(250-149, 55, 150, 150);
    
    
    //Character Image
    
    CharacterFaces(face);
    
    
    //TODO: Make the ` force the user to press z, and add pages.
    
   
   //Find out what images to display. The for statement places each text image apart from eachother.
   for (int ixs = 0; ixs < textchars; ixs+=1) {
     
     //If first run, reset text values back to defaults.
     if (ixs == 0) {
       
       if (cfont == MainThought) {textx = 120+234; texty = 37/4+53;}
       if (cfont == Main) {textx = 120+234; texty =  37/4+63;}
       
       
       TextBox(); CharacterFaces(face);
   
     //Debug Message for making fonts.
     //textx = -900; texty=500;
      }
   
   
   
   
   
     //Time to test for what letter it is.
     
     //Set up Text
     fill(255, 255, 255);
     textFont(cfont);
     textAlign(LEFT);
     
       
       
       
       //Test For Letters Now. Spacing is different per font.
       
       //Upper Case
     
     //A
     if (Words[ixs].equals(ReadChars[0])) {text("A", textx, texty); 
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=16;}
     
     }
     
     //B
     if (Words[ixs].equals(ReadChars[1])) {text("B", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=12;}
     
     }
     
     //C
     if (Words[ixs].equals(ReadChars[2])) {text("C", textx, texty); 
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=11;}
     
     }
     
     //D
     if (Words[ixs].equals(ReadChars[3])) {text("D", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=16;}
     
     }
     
     //E
     if (Words[ixs].equals(ReadChars[4])) {text("E", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=9;}
     
     }
     
     //F
     if (Words[ixs].equals(ReadChars[5])) {text("F", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=8;}
     
     }
     
     //G
     if (Words[ixs].equals(ReadChars[6])) {text("G", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=15;}
     
     }
     
     //H
     if (Words[ixs].equals(ReadChars[7])) {text("H", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=15;}
     
     }
     
     //I
     if (Words[ixs].equals(ReadChars[8])) {text("I", textx, texty);  
   
     if (cfont == MainThought) {textx+=5;} if (cfont == Main) {textx+=4;}
     
     }
     
     //J
     if (Words[ixs].equals(ReadChars[9])) {text("J", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=8;}
     
     }
     
     //K
     if (Words[ixs].equals(ReadChars[10])) {text("K", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=16;}
     
     }
     
     //L
     if (Words[ixs].equals(ReadChars[11])) {text("L", textx, texty);  
   
     if (cfont == MainThought) {textx+=17;} if (cfont == Main) {textx+=8;}
     
     }
     
     //M
     if (Words[ixs].equals(ReadChars[12])) {text("M", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=24;}
     
     }
     
     //N
     if (Words[ixs].equals(ReadChars[13])) {text("N", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=16;}
     
     }
     
     //O
     if (Words[ixs].equals(ReadChars[14])) {text("O", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=20;}
     
     }
     
     //P
     if (Words[ixs].equals(ReadChars[15])) {text("P", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=9;}
     
     }
     
     //Q
     if (Words[ixs].equals(ReadChars[16])) {text("Q", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=22;}
     
     }
     
     //R
     if (Words[ixs].equals(ReadChars[17])) {text("R", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=18;}
     
     }
     
     //S
     if (Words[ixs].equals(ReadChars[18])) {text("S", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=16;}
     
     }
     
     //T
     if (Words[ixs].equals(ReadChars[19])) {text("T", textx, texty);  
   
     if (cfont == MainThought) {textx+=17;} if (cfont == Main) {textx+=12;}
     
     }
     
     //U
     if (Words[ixs].equals(ReadChars[20])) {text("U", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=17;}
     
     }
     
     //V
     if (Words[ixs].equals(ReadChars[21])) {text("V", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=20;}
     
     }
     
     //W
     if (Words[ixs].equals(ReadChars[22])) {text("W", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=24;}
     
     }
    
     //X
     if (Words[ixs].equals(ReadChars[23])) {text("X", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=17;}
     
     }
     
     //Y
     if (Words[ixs].equals(ReadChars[24])) {text("Y", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=20;}
     
     }
     
     //Z
     if (Words[ixs].equals(ReadChars[25])) {text("Z", textx, texty);  
   
     if (cfont == MainThought) {textx+=20;} if (cfont == Main) {textx+=20;}
     
     }
     
    
      
     
     //Lower Case
     
     //a
     if (Words[ixs].equals(ReadChars[26])) {text("a", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=7;}
     
     }
     
     //b
     if (Words[ixs].equals(ReadChars[27])) {text("b", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=11;}
     
     }
     
     //c
     if (Words[ixs].equals(ReadChars[28])) {text("c", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=7;}
     
     }
     
     //d
     if (Words[ixs].equals(ReadChars[29])) {text("d", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=11;}
     
     }
     
     //e
     if (Words[ixs].equals(ReadChars[30])) {text("e", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=6;}
     
     }
     
     //f
     if (Words[ixs].equals(ReadChars[31])) {text("f", textx, texty);   
   
     if (cfont == MainThought) {textx+=7;} if (cfont == Main) {textx+=0;}
     
     }
     
     //g
     if (Words[ixs].equals(ReadChars[32])) {text("g", textx, texty);   
   
     if (cfont == MainThought) {textx+=17;} if (cfont == Main) {textx+=12;}
     
     }
     
     //h
     if (Words[ixs].equals(ReadChars[33])) {text("h", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=11;}
     
     }
     
     //i
     if (Words[ixs].equals(ReadChars[34])) {text("i", textx, texty);   
   
     if (cfont == MainThought) {textx+=3;} if (cfont == Main) {textx-=5;}
     
     }
     
     //j
     if (Words[ixs].equals(ReadChars[35])) {text("j", textx, texty);   
   
     if (cfont == MainThought) {textx+=3;} if (cfont == Main) {textx-=1;}
     
     }
     
     //k
     if (Words[ixs].equals(ReadChars[36])) {text("k", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=9;}
     
     }
     
     //l
     if (Words[ixs].equals(ReadChars[37])) {text("l", textx, texty);   
   
     if (cfont == MainThought) {textx-=3;} if (cfont == Main) {textx-=5;}
     
     }
     
     //m
     if (Words[ixs].equals(ReadChars[38])) {text("m", textx, texty);   
   
     if (cfont == MainThought) {textx+=25;} if (cfont == Main) {textx+=23;}
     
     }
     
     //n
     if (Words[ixs].equals(ReadChars[39])) {text("n", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=8;}
     
     }
     
     //o
     if (Words[ixs].equals(ReadChars[40])) {text("o", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=7;}
     
     }
     
     //p
     if (Words[ixs].equals(ReadChars[41])) {text("p", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=11;}
     
     }
     
     //q
     if (Words[ixs].equals(ReadChars[42])) {text("q", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=11;}
     
     }
     
     //r
     if (Words[ixs].equals(ReadChars[43])) {text("r", textx, texty);   
   
     if (cfont == MainThought) {textx+=3;} if (cfont == Main) {textx+=7;}
     
     }
     
     //s
     if (Words[ixs].equals(ReadChars[44])) {text("s", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=11;}
     
     }
     
     //t
     if (Words[ixs].equals(ReadChars[45])) {text("t", textx, texty);   
   
     if (cfont == MainThought) {textx+=8;} if (cfont == Main) {textx-=3;}
     
     }
     
     //u
     if (Words[ixs].equals(ReadChars[46])) {text("u", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=8;}
     
     }
     
     //v
     if (Words[ixs].equals(ReadChars[47])) {text("v", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=9;}
     
     }
     
     //w
     if (Words[ixs].equals(ReadChars[48])) {text("w", textx, texty);   
   
     if (cfont == MainThought) {textx+=25;} if (cfont == Main) {textx+=24;}
     
     }
    
     //x
     if (Words[ixs].equals(ReadChars[49])) {text("x", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=9;}
     
     }
     
     //y
     if (Words[ixs].equals(ReadChars[50])) {text("y", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=9;}
     
     }
     
     //z
     if (Words[ixs].equals(ReadChars[51])) {text("z", textx, texty);   
   
     if (cfont == MainThought) {textx+=15;} if (cfont == Main) {textx+=7;}
     
     }
     
     
    
    
     
     
     //Symbols
     
     //1
     if (Words[ixs].equals(ReadChars[52])) {text("1", textx, texty); textx+=15;}
     
     //2
     if (Words[ixs].equals(ReadChars[53])) {text("2", textx, texty); textx+=15;}
     
     //3
     if (Words[ixs].equals(ReadChars[54])) {text("3", textx, texty); textx+=15;}
     
     //4
     if (Words[ixs].equals(ReadChars[55])) {text("4", textx, texty); textx+=15;}
     
     //5
     if (Words[ixs].equals(ReadChars[56])) {text("5", textx, texty); textx+=15;}
     
     //6
     if (Words[ixs].equals(ReadChars[57])) {text("6", textx, texty); textx+=15;}
     
     //7
     if (Words[ixs].equals(ReadChars[58])) {text("7", textx, texty); textx+=15;}
     
     //8
     if (Words[ixs].equals(ReadChars[59])) {text("8", textx, texty); textx+=15;}
     
     //9
     if (Words[ixs].equals(ReadChars[60])) {text("9", textx, texty); textx+=15;}
     
     //0
     if (Words[ixs].equals(ReadChars[61])) {text("0", textx, texty); textx+=15;}
     
     
     
     
     //`
     //Force user to press z.
     if (Words[ixs].equals(ReadChars[62]) && textstops[ixs] != 1) {textstop = true; textstops[ixs] = 1;}
     //Prevent treating the ` like a space.
     if (Words[ixs].equals(ReadChars[62])) {textx-=20;}
     
     //~
     if (Words[ixs].equals(ReadChars[63])) {text("~", textx, texty);}
     
     //!
     if (Words[ixs].equals(ReadChars[64])) {text("!", textx, texty);}
     
     //@
     if (Words[ixs].equals(ReadChars[65])) {text("@", textx, texty);}
     
     //# AKA Period.
     if (Words[ixs].equals(ReadChars[66])) {text(".", textx, texty);}
     
     //$
     if (Words[ixs].equals(ReadChars[67])) {text("$", textx, texty);}
     
     //%
     if (Words[ixs].equals(ReadChars[68])) {text("%", textx, texty);}
     
     //^ - Moves to second line
     if (Words[ixs].equals(ReadChars[69])) {
       if (cfont == MainThought) {textx = 130+234; texty += 50;}
       if (cfont == Main) {textx = 130+234; texty += 55;}
     }
     
     //& - Makes text go to next page.
     if (Words[ixs].equals(ReadChars[70])) {TextBox(); CharacterFaces(face);
       if (cfont == MainThought) {textx = 120+234; texty =  37/4+53;}
       if (cfont == Main) {textx = 120+234; texty =  37/4+63;}
     } 
       
     if (Words[ixs].equals(ReadChars[70]) && newpages[ixs] != 1) {newpages[ixs] = 1;}
     
     //*
     if (Words[ixs].equals(ReadChars[71])) {text("*", textx, texty);}
     
     //(
     if (Words[ixs].equals(ReadChars[72])) {text("(", textx, texty);}
     
     //)
     if (Words[ixs].equals(ReadChars[73])) {text(")", textx, texty);}
     
     //-
     if (Words[ixs].equals(ReadChars[74])) {text("-", textx, texty);}
     
     //=
     if (Words[ixs].equals(ReadChars[75])) {text("=", textx, texty);}
     
     //_ This is just a space, so it does nothing.
     //Do nothing dammit.
     
     //+
     if (Words[ixs].equals(ReadChars[77])) {text("+", textx, texty);}
     
     //[
     if (Words[ixs].equals(ReadChars[78])) {text("[", textx, texty);}
     
     //]
     if (Words[ixs].equals(ReadChars[79])) {text("]", textx, texty);}
     
     //\
     if (Words[ixs].equals(ReadChars[80])) {text("\"", textx, texty);}
     
     //{
     if (Words[ixs].equals(ReadChars[81])) {text("{", textx, texty);}
     
     //}
     if (Words[ixs].equals(ReadChars[82])) {text("}", textx, texty);}
     
     //|
     if (Words[ixs].equals(ReadChars[83])) {text("|", textx, texty);}
     
     //;
     if (Words[ixs].equals(ReadChars[84])) {text(";", textx, texty);}
     
     //'
     if (Words[ixs].equals(ReadChars[85])) {text("'", textx, texty);}
     
     //:
     if (Words[ixs].equals(ReadChars[86])) {text(":", textx, texty);}
     
     //"
     if (Words[ixs].equals(ReadChars[87])) {text("'", textx, texty);}
     
     //,
     if (Words[ixs].equals(ReadChars[88])) {text(",", textx, texty);}
     
     // /
     if (Words[ixs].equals(ReadChars[89])) {text("/", textx, texty);}
     
     //<
     if (Words[ixs].equals(ReadChars[90])) {text("<", textx, texty);}
     
     //>
     if (Words[ixs].equals(ReadChars[91])) {text(">", textx, texty);}
     
     //?
     if (Words[ixs].equals(ReadChars[92])) {text("?", textx, texty);}
     
     
     
     
     
     
     
     //Move text, to then display the next letter.
     textx+=20;
     
     //Debug
     //println(textstops[ixs]);
       
   
   }
   
  }
   
   //} catch (ArrayIndexOutOfBoundsException e) {/*Do nothing*/}


//Make Allowed chars go up.


//Prevent Null Pointer Dick Thing.
if (textchars == Words.length) {

  //Exit the message.
  if (z) {
    
    //Quit
    textchars = 0;
    textstops = new int[1000];
    newpages = new int[1000];
    PlayingMessage = false;

  }

} else {

  //Allow more chars.
  if (texttimer == 2 && !textstop) {textchars+=1;}

}


//Allow user to break a text stop.
if (z && textstop == true) {textstop = false;}


  TextTimer();

}


  }
  



//Text timer
void TextTimer() {

  //Don't lag entire game.
  if (PlayingMessage) {
  
    //Make timer go up, and reset.
    if (texttimer >= 2) {
  
      //Don't go back to zero if x is held.
      if (!x) {
        texttimer=0;
      }
  
    } else {
  
      //Comeplete if x is held.
      if (!x) {
        texttimer+=2;
      } else {texttimer=2;}
      
    }
  
  }

}




//TextBox
void TextBox() {

  if (PlayingMessage) {
  
  //Box Image
  image(TextBox, 120, 37/4);
  
  }

}










//Character Faces - Draw faces.
void CharacterFaces(String face) {

  //Debug
  fill(0, 0, 255); rect(154, 37/4+18, 150, 150);


}