import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPasswordformfield extends StatefulWidget {

  final String text;

  const CustomPasswordformfield({
    Key? key,
    required this.text,
  }) : super(key: key);

  _CustomPasswordFormFieldState createState() => _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordformfield>{

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
      autofillHints: [AutofillHints.password],                              
      obscureText: false,
      focusNode: _focusNode,
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
            color: Color(0xFFF1F4F8),
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
          fontSize: 30, // tamaño cuando el label flota
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),                                
        filled: true,
        fillColor: Colors.blueGrey[700],
        suffixIcon: Icon(
          //_model.passwordVisibility
            /*?*/ Icons.visibility_outlined
            /*: Icons.visibility_off_outlined*/,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
}