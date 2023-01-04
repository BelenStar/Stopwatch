import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


abstract class ThemeText{

  static const TextStyle styleText = TextStyle(
    fontSize: 85,
    color: Colors.white,
  );

  static final fontTitle = GoogleFonts.lobster(fontSize: 40);

  static const backColor =  Color.fromARGB(251, 94, 48, 92);

  static const iconColor = const Color.fromARGB(255, 224, 148, 224);

  static const  TextStyle colorTitle =  TextStyle(
    color: Color.fromARGB(213, 224, 148, 224),
    );

  
  static final resetBottonStyle = TextButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 121, 103, 126), 
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    minimumSize:const  Size(120, 40),
    textStyle: const TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    )
  ); 

 static final startBottonStyle = TextButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 224, 148, 224), 
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    minimumSize: const Size(120, 40),
    textStyle: const TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    )

  ); 

  


}
  
