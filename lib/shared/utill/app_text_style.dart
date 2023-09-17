


import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

myStyleInter(double fs, Color clr, [FontWeight ?fw,double? letterSpacing]){
  return GoogleFonts.inter(fontSize: fs, color: clr, fontWeight: fw,letterSpacing: letterSpacing);
}


String bulkImportInstructions = ("1. Download the format file and fill it with proper data.\n"'\n'
"2. You can download the example file to understand how the data must be filled.\n"'\n'
"3. Once you have downloaded and filled the format file, upload it in the form below and submit.\n"'\n'
"4. After uploading products, you need to edit them and set product images and choices.\n"'\n'
"5. You can get brand and category id from their list; please input the right ids.\n"'\n'
"6. You can upload your product images in the product folder from the gallery and copy the image's path.");