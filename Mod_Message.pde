//Add or delete messages.
void AddMessage() {

  //Detect Message Amount
  
  int MessageNumberToAdd = RawMessages.length/2 - 1;
  
  String[] MessageHeaders = loadStrings("MessageHeaders.msg");
  
  //println(MessageNumberToAdd);
  
  try {
  
    //Time to add a message to the array.
 RawMessages = append(RawMessages, MessageHeaders[MessageNumberToAdd]);
 RawMessages = append(RawMessages, "U.N.D.E.F.I.N.E.D");


  //showInputDialog("Please enter the text you want for the new message.");

  } catch (ArrayIndexOutOfBoundsException e) {
  
    showInputDialog("You reached the limit for text messages. :P Please add more headers to MessageHeaders.msg");
  
  }
  
  

}







//Delete
void DeleteMessage() {
  
  
  
  
  String Input = "";

  
  if (RawMessages.length >= 4) {
    
    
    try {
      
    Input = showInputDialog("This will delete the last message from the list. Are you sure you want to delete that? (Enter y for yes.)"); 
    
      if (Input.equals("y") || Input.equals("Y")) {
        
        if (pagenumber != 1) {pagenumber-=1;}
        
      RawMessages = shorten(RawMessages);     
      RawMessages = shorten(RawMessages);     
      
      }
      
    } catch (NullPointerException e) {
        Input = "n";
      }
      
  } else {
  
    showInputDialog("You cannot delete the initializer, silly. :P");
  
  }

}





















//Edit Message - Woah boy, here comes the big one.
void EditMessage(int MessageIDX) {

  
  if (MessageIDX != 2) {
  
  //New string.
  String[] NewMessage;
  
  
  NewMessage = split(RawMessages[MessageIDX], ".");
  
  
  String NewerMessage = NewMessage[0];
  
  
  for (int ise = 1; ise < NewMessage.length; ise++) {
  
    NewerMessage = join(NewMessage, "");
  
  }
  
  try {
  
    //Edit Message.
  NewerMessage = showInputDialog("Enter the new message." , NewerMessage);
  
  } catch (NullPointerException e) {
  
    for (int ise = 1; ise < NewMessage.length; ise++) {
  
    NewerMessage = join(NewMessage, "");
  
    }
  
  }
  
  try {
  
  //Re-make the message into code.
  String NewestMessage;
  String[] TemperMessage = new String[NewerMessage.length()-1];
  
  char[] allChars = new char[NewerMessage.length()];

  for (int i = 0; i <= NewerMessage.length()-1; i++) {
  
        //Attempt to seperate the entered message into chars, then turn them into strings.
        allChars[i] = NewerMessage.charAt(i);
        
        if (i != NewerMessage.length()) {TemperMessage[i] = str(allChars[i]);
        
        //println(allChars[i]);
        //println(TemperMessage[i]);} else {
        
        String stringer;
        //stringer = str(allChars[NewerMessage.length()-1]);
        stringer = "";
        
        //println(stringer);
        
        TemperMessage = append(TemperMessage, stringer);
        
        //println(stringer, "Yo");
        //println(TemperMessage);
        
        }
        
  
        
        
  }
  
  
  
  NewestMessage = join(TemperMessage, ".");
  
  //println(TemperMessage);
  
  RawMessages[MessageIDX] = NewestMessage;
  
  
  
  } catch (NullPointerException e) {
  
    
  
  }
  
  
  
  } else {showInputDialog("I SAID IT'S BLOCKED!!!");}

}