import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:careviger/widgets/buttons/custom_button.dart';
import 'package:careviger/widgets/textFormField/custom_textFormField.dart';

class RegisterPageWidget extends StatelessWidget{
  const RegisterPageWidget({ super.key });

  @override
  Widget build(BuildContext context) {
    var sizeWindow = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,     
        backgroundColor: Colors.blueGrey,
        body: SafeArea(                 
          top: true,          
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              top: 15,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              decoration: BoxDecoration(
                color: Color(0xFF2A5650),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(17, 20, 0, 10),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height * 0.07,
                      decoration: BoxDecoration(
                        color: Color(0xFF2A5650),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Create an account',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.robotoCondensed(
                                fontSize: 44, 
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0.0,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.white,
                                    offset: Offset(1.5, 1.5),
                                    blurRadius: 2.0,
                                  ),
                                ], // shadows
                              ), // style
                            ),
                          ], //children
                        ),
                      ),
                    ),
                  ),
                  Container(                
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: MediaQuery.sizeOf(context).height * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(12),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Flexible(
                                child: Text(
                                  'CAREVIGER',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 45, 
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 0.0,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black54,
                                        offset: Offset(2, 2),
                                        blurRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ), 
                            Padding(
                              padding: EdgeInsets.only(top: 35.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'images/white-sound-waves.png',
                                  width: 70,
                                  height: 45,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ], // children
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(top: 30.0),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.80,
                            child: CustomTextformfield(
                              text: 'Complete name'
                            ),
                          ),   
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(top: 20.0),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.80,
                            child: CustomTextformfield(
                              text: 'Email'
                            ),
                          ),   
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(top: 20.0),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.80,
                            child: CustomTextformfield(
                              text: 'User name'
                            ),
                          ),   
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(top: 20.0),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.80,
                            child: TextFormField(                              
                                autofocus: true,
                                autofillHints: [AutofillHints.password],                              
                                obscureText: false,
                                focusNode: FocusNode(skipTraversal: true),
                                decoration: InputDecoration(
                                  labelText: 'Password',
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
                              ),
                          ),   
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(top: 20.0),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.80,
                            child: TextFormField(                              
                                autofocus: true,
                                autofillHints: [AutofillHints.password],                              
                                obscureText: false,
                                focusNode: FocusNode(skipTraversal: true),
                                decoration: InputDecoration(
                                  labelText: 'Confirm password',
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
                              ),
                          ),   
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(top: 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.only(top: 8.0),
                                child: Text(
                                  'Gender: ',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 20, 
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 0.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.25,
                                child: CustomButton(
                                  text: 'Male', 
                                  onPressed: (){
                                    print('print button');
                                  }                                                            
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.25,
                                child: CustomButton(
                                  text: 'Female', 
                                  onPressed: (){
                                    print('print button');
                                  }                                                            
                                ),
                              ),
                            ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(top: 15.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.only(top: 10.0),
                                child: SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 0.6,
                                  height: MediaQuery.sizeOf(context).height * 0.06,
                                  child: CustomButton(
                                  text: 'Sing Up', 
                                  onPressed: (){
                                    Navigator.pushReplacementNamed(context, '/login');
                                  }                                                            
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ], // children                    
                    ),
                  ),
                ],//children
              ),
            ),
          ),
        ),
      ),
    );
  }
}