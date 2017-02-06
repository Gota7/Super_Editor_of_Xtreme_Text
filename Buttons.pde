void LoadButton(float testx, float testy, float xwidth, float yheight) {

  fill(29, 219, 43); if (firstrun == false) {fill(100);}
  rect(testx, testy, xwidth, yheight);
  fill(0);
  text("Load",testx+xwidth/2, testy+yheight/2);
  
 if (mouseX >= testx && mouseX <= testx+xwidth && mouseY >= testy && mouseY <= testy+yheight && firstrun) {
  //println("Hi");

      if(mouse && mouselock == false) {selectInput("Select a msg file.", "fileSelected"); mouseX = 5;  mouse = false; mouselock = true;}
    
  
      }
  

}


//Export Blocks

void ExportButton(float testx, float testy, float xwidth, float yheight) {

  fill(100); if (firstrun == false) {fill(250, 13, 13);}
  rect(testx, testy, xwidth, yheight);
  fill(0);
  text("Export",testx+xwidth/2, testy+yheight/2);
  
  if (mouseX >= testx && mouseX <= testx+xwidth && mouseY >= testy && mouseY <= testy+yheight && firstrun == false) {
  //println("Hi");

      if(mouse){Export(false); mouseX = 5; showInputDialog("Exported! Please navigate to this app's main directory to get your new .msg file!"); mouse = false;}
      
  
  
  }
  

}





//New Button
void NewButton(float testx, float testy, float xwidth, float yheight) {

  fill(245, 218, 7); if (firstrun == false) {fill(0, 0, 0, 0);}
    if (firstrun) {
  rect(testx, testy, xwidth, yheight);
  fill(0);
  text("New",testx+xwidth/2, testy+yheight/2);
  
 if (mouseX >= testx && mouseX <= testx+xwidth && mouseY >= testy && mouseY <= testy+yheight && firstrun) {
  //println("Hi");

      if(mouse && mouselock == false) {Message = loadStrings("Template.msg"); TempMessage = Message;
    RawMessages = TempMessage;mouseX = 5;  mouse = false; mouselock = true; 
  allowedpagenumbers = RawMessages.length/40+1;
    //println(allowedpagenumbers); 
  firstrun = false;}
    
  
      }
    }
  

}



//Overwrite selected file.
void SaveButton(float testx, float testy, float xwidth, float yheight) {

  fill(100); if (firstrun == false) {fill(171, 16, 196);}
    if (!firstrun) {
  rect(testx, testy, xwidth, yheight);
  fill(0);
  text("Save",testx+xwidth/2, testy+yheight/2);
    }
  
  if (mouseX >= testx && mouseX <= testx+xwidth && mouseY >= testy && mouseY <= testy+yheight && firstrun == false) {
  //println("Hi");

      String SaveQ = "";

        
        //Stop crash if user exits message.
      try {

      //If User wants to save.
      if(mouse){
      /*Export();*/ mouseX = 5; 
      if (File.equals("null")) {showInputDialog("You created a new message, so you can't save over a file...");} else {
    SaveQ = showInputDialog("This will save over the Message loaded. Are you sure you want to save? (Enter y for yes.)"); 
      }
    mouse = false;}  
      
      if (SaveQ.equals("y") || SaveQ.equals("Y")) {Export(true);}
  
      } catch (NullPointerException e) {
        SaveQ = "n";
      }
  
  }
  

}














//Delete Blocks

void DeleteButton(float testx, float testy, float xwidth, float yheight) {

  fill(100); if (firstrun == false) {fill(255, 136, 36);}
  rect(testx, testy, xwidth, yheight);
  fill(0);
  text("Delete",testx+xwidth/2, testy+yheight/2);
  
  if (mouseX >= testx && mouseX <= testx+xwidth && mouseY >= testy && mouseY <= testy+yheight && firstrun == false) {
  //println("Hi");

      if(mouse){DeleteMessage(); mouseX = 5; mouse = false;}
      
  
  
  }
  

}




//Add Blocks

void AddButton(float testx, float testy, float xwidth, float yheight) {

  fill(100); if (firstrun == false) {fill(255, 64, 134);}
  rect(testx, testy, xwidth, yheight);
  fill(0);
  text("Add",testx+xwidth/2, testy+yheight/2);
  
  if (mouseX >= testx && mouseX <= testx+xwidth && mouseY >= testy && mouseY <= testy+yheight && firstrun == false) {
  //println("Hi");

      if(mouse){AddMessage(); mouseX = 5; mouse = false;}
      
  
  
  }
  

}












//Edit Blocks

void EditButton(float testx, float testy, float xwidth, float yheight) {

  fill(100); if (firstrun == false) {fill(238, 242, 22);}
  rect(testx, testy, xwidth, yheight);
  fill(0);
  text("Edit",testx+xwidth/2, testy+yheight/2);
  
  if (mouseX >= testx && mouseX <= testx+xwidth && mouseY >= testy && mouseY <= testy+yheight && firstrun == false) {
  //println("Hi");

      if(mouse){EditMessage(CurrentMessage*2+2); mouseX = 5; mouse = false;}
      
  
  
  }
  

}