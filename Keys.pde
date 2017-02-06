void keyPressed() {

  if (key == 'x') {
    x = true;
  }
  
  if (key == 'z') {
    z = true;
  }
  
  if (key == 'a') {
    if (!firstrun && !keydelay && pagenumber != 1) {pagenumber-=1;}
  }
  
  if (key == 's') {
    if (!firstrun && !keydelay && pagenumber != allowedpagenumbers) {pagenumber+=1;}
  }
  
  
  
  if (key == 'd') {
    if (!firstrun && !keydelay && fontpagenumber != 1) {fontpagenumber-=1;}
  }
  
  if (key == 'f') {
    if (!firstrun && !keydelay && fontpagenumber != allowedfontpagenumbers) {fontpagenumber+=1;}
  }



}




void keyReleased() {

  if (key == 'x') {
    x = false;
  }
  
  if (key == 'z') {
    z = false;
  }
  


}