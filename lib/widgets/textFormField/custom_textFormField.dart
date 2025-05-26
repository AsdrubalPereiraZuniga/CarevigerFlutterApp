import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextformfield extends StatefulWidget {

  final String text;

  const CustomTextformfield({
    Key? key,
    required this.text,
  }) : super(key: key);

  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextformfield>{

  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(                              
      autofocus: false,
      focusNode: _focusNode,
      autofillHints: [AutofillHints.password],                              
      obscureText: false,      
      decoration: InputDecoration(
        labelText: widget.text,
        labelStyle: GoogleFonts.robotoCondensed(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: Colors.white,
          fontSize: 20,
          letterSpacing: 0.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue.shade200,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        floatingLabelStyle: GoogleFonts.robotoCondensed(
          fontSize: 30, 
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),                                
        filled: true,
        fillColor: Colors.blueGrey[700],        
      ),
    );
  }
}