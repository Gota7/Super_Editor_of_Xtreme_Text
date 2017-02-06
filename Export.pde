//Time to export the MSG file!
//Parameter is if it is to replace loaded file.
void Export(boolean OverWrite) {


  //If SAVE - Overwrite, else - just export to new file.
  
if (OverWrite) {
  saveStrings(File, RawMessages);
} else {

   //println("Hi");
  saveStrings(ExportPath, RawMessages);
  File = ExportPath;

}



}