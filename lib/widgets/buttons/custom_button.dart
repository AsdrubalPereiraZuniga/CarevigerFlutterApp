import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButton extends StatelessWidget{

  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(      
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 132, 186, 209),
        elevation: 3,                                
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),          
        ),
      ), //style  
      onPressed: onPressed,
      child: Text(
        text,
        style:GoogleFonts.robotoCondensed(
          fontSize: 20,
          fontWeight: FontWeight.w600,                                                    
          fontStyle: FontStyle.normal,
          color: Colors.white,
        ),
      ),
    );      
  }
}