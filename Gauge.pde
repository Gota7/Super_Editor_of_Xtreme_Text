//Shut up about the name Christopher.

//Time to make a usable control panel! 
void Guage() {

  /*
  
  
  
 _    _____ 
| |  |  ___\ 
| |  | |  | \ 
| |  | |  | |
| |  | |__/ / 
|_|  |_____/  
  
  
  
  
  
  
  */
  
  //Rectangles!
  fill(255);
  rect(30, 230, 200, 300);
  

  
  
  
  
  

  
    //Int to alternate rectangles.
    int RectFill = 0;
    
      //Alternate rectangles.
      for (int ixs = 0; ixs < 20; ixs++) {
      
        
        if (RectFill == 0) {
        
          fill(255);
        
          RectFill = 1;
        } else {
        
          fill(180);
        
        
          RectFill = 0;
        }
      
      
      //Draw rectangles.
      if (ixs == 0) {rectx = 30; recty = 230;}
      
      rect(rectx, recty, 200, 15);
      
      recty+=15;
      
      }
      
      
      
     
     

  
  
  
  
  
  
  
    
  if (!firstrun) {
    
    //Time for the input rectangle!
    
      for (int ic = 0; ic <= 19; ic++) {
      
        if (ic == 0) {rectx = 30; recty = 230;
      
  
}
        
        fill(0, 0, 0, 0);
        
        if (mouseX >= rectx && mouseX <= rectx + 200 && mouseY >= recty && mouseY <= recty + 15 && mouse) {
        
          
          
          
          //Stop null.
          if (ic + ((pagenumber-1) * 20) > RawMessages.length/2 - 1) {
            
            //Panic
            showInputDialog("Um, that message doesn't exist...");
            
          } else {
          
          textchars = 0; 
          CurrentMessage = ic + ((pagenumber-1) * 20); 
          
                 
        
        }
        
        
       
        
        
        mouseX = 500;
        mouse = false;
        
        }
      
          //Debug
          //println(CurrentMessage);
      
      fill(0, 0, 255, 100);
      if (ic + (pagenumber*20)-20 == CurrentMessage) {rect(rectx, 230 + (ic*15), 200, 15);}
      
      
        recty+=15;
        
        
      
      }
    
  }
    
  
  
  
  
  
  
  
  
  
  
  
  //Text
  textAlign(CENTER);
  fill(0);
  textSize(20);
  textFont(Lucida);
  text("Message IDs", 120, 210);
  textSize(12);
  text("Page: " + pagenumber, 120, 225);
  textAlign(LEFT);  
  
  
  
  
  
  
  //Time to display areas text.
  if (!firstrun) {
   
  
    //For Loop
    for (int i = 1; i < RawMessages.length; i+=2) {
    
      if (i == 1) {idx = 32; idy = 242;
    
    //Auto adjust for page number.
    i += ((pagenumber-1) * 40); 
  
    }
      
      
      if (idy < 242+(15*20)) {
        text(RawMessages[i], idx, idy);
      }
      
      idy+=15;
      
      

    
    }
  }
    
    
    
    
    /*
    
    
    
    
    
    
    
    
    
 _______                            
(_______)                       _   
    _       _____    _   _    _| |_ 
   | |     | ___ |  ( \ / )  (_   _)
   | |     | ____|   ) X (     | |_ 
   |_|     |_____)  (_/ \_)     \__)
    
    
    
    
    
    
    
    
    
    */
    //Rectangles!
  fill(255);
  rect(260, 230, 480, 300);
  

  
  
  
  
  
  
    //Int to alternate rectangles.
    
    
      //Alternate rectangles.
      for (int ixs = 0; ixs < 20; ixs++) {
      
        
        if (RectFill == 0) {
        
          fill(255);
        
          RectFill = 1;
        } else {
        
          fill(180);
        
        
          RectFill = 0;
        }
      
      
      //Draw rectangles.
      if (ixs == 0) {rectx = 260; recty = 230;}
      
      rect(rectx, recty, 480, 15);
      
      recty+=15;
      
      }
      
      
      
     
     

  
  
  
  
  
  
  
    
  if (!firstrun) {
    
    //Time for the input rectangle!
    
      for (int ic = 0; ic <= 19; ic++) {
      
        if (ic == 0) {rectx = 260; recty = 230;
      
  
}
        
        fill(0, 0, 0, 0);
        
        if (mouseX >= rectx && mouseX <= rectx + 480 && mouseY >= recty && mouseY <= recty + 15 && mouse) {
        
          
          
          
          //Stop null.
          if (ic + ((pagenumber-1) * 20) > RawMessages.length/2 - 1) {
            
            //Panic
            showInputDialog("You can't edit a message doesn't exist...");
            
          } else {
          
          textchars = 0; 
          CurrentMessage = ic + ((pagenumber-1) * 20); 
          
          //EditMessage(CurrentMessage*2+2);
          
                 
        
        }
        
        
       
        
        
        mouseX = 500;
        mouse = false;
        
        }
      
          //Debug
          //println(CurrentMessage);
      
      fill(0, 0, 255, 100);
      if (ic + (pagenumber*20)-20 == CurrentMessage) {rect(rectx, 230 + (ic*15), 480, 15);}
      
      
        recty+=15;
        
        
      
      }
    
    
  }
  
  
  
  
  
  
  
  
  
  
  
  //Text
  textAlign(CENTER);
  fill(0);
  textSize(20);
  textFont(Lucida);
  text("Messages", 500, 210);
  textSize(12);
  text("Page: " + pagenumber, 500, 225);
  textAlign(LEFT);  
  
  
  
  
  
  
  //Time to display areas text.
  if (!firstrun) {
   
  
    //For Loop
    for (int i = 2; i < RawMessages.length; i+=2) {
    
      if (i == 2) {tex = 262; tey = 242;
    
    //Auto adjust for page number.
    i += ((pagenumber-1) * 40); 
  
    }
      
      String[] Messageer;
      
      Messageer = split(RawMessages[i], ".");
      
        String Messageeer = Messageer[0];
  
  
    for (int ise = 1; ise < Messageer.length; ise++) {
  
      Messageeer = join(Messageer, "");
  
    }
      
      
        /*for (int ih = 0; ih < Messageer.length; ih++) {
          
      if (tey < 242+(15 * 20)) {
        if (tex + ih*10 < 730) { text(Messageer[ih], tex + ih*10, tey); } else {text("...", 745, tey);}
      }
      
        }*/
        
        if (tey < 242+(15 * 20)) {
          text(Messageeer, tex, tey);
        }
        
        //Cover up rest of messages.
        fill(193, 191, 191);
        rect(740, 230, 300, 300);
        fill(0);
        
      
      tey+=15;
      //println(Messageer);
      

    
    }
    
  }
    
    
    
    
    
    
    
    
    
    
    
      /*
  
  
  


 _______                            
(_______)                       _   
 _____       ___     ____     _| |_ 
|  ___)     / _ \   |  _ \   (_   _)
| |        | |_| |  | | | |    | |_ 
|_|         \___/   |_| |_|     \__)
  
  
  
  
  
  
  */
  
  //Rectangles!
  fill(255);
  rect(770, 230, 200, 300);
  

  
  
  
  
  

  
    
      //Alternate rectangles.
      for (int ixs = 0; ixs < 20; ixs++) {
      
        
        if (RectFill == 0) {
        
          fill(255);
        
          RectFill = 1;
        } else {
        
          fill(180);
        
        
          RectFill = 0;
        }
      
      
      //Draw rectangles.
      if (ixs == 0) {rectx = 770; recty = 230;}
      
      rect(rectx, recty, 200, 15);
      
      recty+=15;
      
      }
      
      
      
     
     

  
  
  
  
  
  
  
    
  if (!firstrun) {
    
    //Time for the input rectangle!
    
      for (int ic = 0; ic <= 19; ic++) {
      
        if (ic == 0) {rectx = 770; recty = 230;
      
  
}
        
        fill(0, 0, 0, 0);
        
        if (mouseX >= rectx && mouseX <= rectx + 200 && mouseY >= recty && mouseY <= recty + 15 && mouse) {
        
          
          
          
          //Stop null.
          if (ic + ((fontpagenumber-1) * 20) > Fonts.length - 1) {
            
            //Panic
            showInputDialog("Um, that font doesn't exist... Please add fonts manually in the code.");
            
          } else {
          
          textchars = 0;
          CurrentFont = ic + ((fontpagenumber-1) * 20); 
          
                 
        
        }
        
        
       
        
        
        mouseX = 5;
        mouse = false;
        
        }
      
          //Debug
          //println(CurrentMessage);
      
      fill(0, 0, 255, 100);
      if (ic + (fontpagenumber*20)-20 == CurrentFont) {rect(rectx, 230 + (ic*15), 200, 15);}
      
      
        recty+=15;
        
        
      
      }
    
  }
    
  
  
  
  
  
  
  
  
  
  
  
  //Text
  textAlign(CENTER);
  fill(0);
  textSize(20);
  textFont(Lucida);
  text("Fonts", 870, 210);
  textSize(12);
  text("Page: " + fontpagenumber, 870, 225);
  textAlign(LEFT);  
  
  
  
  
  
  
  //Time to display areas text.
  if (!firstrun) {
   
  
    //For Loop
    for (int i = 0; i < Fonts.length; i+=1) {
    
      if (i == 0) {idx = 772; idy = 242;
    
    //Auto adjust for page number.ER
    i += ((fontpagenumber-1) * 40); 
  
    }
      
      
      if (idy < 242+(15*20)) {
        text(Fonts[i], idx, idy);
      }
      
      idy+=15;
      
      

    
    }
  }
    
    
    
    
    
    
    
    
  
    
    
  
  

}