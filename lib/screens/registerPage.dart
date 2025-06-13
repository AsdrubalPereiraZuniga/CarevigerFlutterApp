
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:careviger/widgets/buttons/custom_button.dart';
import 'package:careviger/widgets/textFormField/custom_textFormField.dart';
import 'package:careviger/widgets/textFormField/custom_passwordFormField.dart';

class RegisterPageWidget extends StatefulWidget{
  const RegisterPageWidget({ super.key });

  @override
  State<RegisterPageWidget> createState() => _RegisterPageWidget();
}

class _RegisterPageWidget extends State<RegisterPageWidget>{
  String selected = '';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
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
              width: screenSize.width,
              height: screenSize.height,
              decoration: BoxDecoration(
                color: Color(0xFF2A5650),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(17, 20, 0, 10),
                    child: Container(
                      width: screenSize.width,
                      height: screenSize.height * 0.07,
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
                              'Crear una cuenta',
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
                    width: screenSize.width * 0.9,
                    height: screenSize.height * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(12),                                            
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
                            width: screenSize.width * 0.80,
                            child: CustomTextformfield(
                              text: 'Nombre completo'
                            ),
                          ),   
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(top: 20.0),
                          child: SizedBox(
                            width: screenSize.width * 0.80,
                            child: CustomTextformfield(
                              text: 'Email'
                            ),
                          ),   
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(top: 20.0),
                          child: SizedBox(
                            width: screenSize.width * 0.80,
                            child: CustomTextformfield(
                              text: 'Nombre de usuario'
                            ),
                          ),   
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(top: 20.0),
                          child: SizedBox(
                            width: screenSize.width * 0.80,
                            child: CustomPasswordformfield(
                              text: "Password"
                            ),
                          ),   
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(top: 20.0),
                          child: SizedBox(
                            width: screenSize.width * 0.80,
                            child: CustomPasswordformfield(
                              text: 
                              "Confirm Password"
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
                                  'Genero: ',
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
                                  width: screenSize.width * 0.25,
                                  child: CustomButton(
                                    text: 'Masculino', 
                                    isSelected: selected == 'Male',
                                    onPressed: (){
                                      setState(() {
                                        selected = 'Male';
                                      });
                                    }                                                            
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: SizedBox(
                                  width: screenSize.width * 0.25,
                                  child: CustomButton(
                                    text: 'Femenino', 
                                    isSelected: selected == 'Female',
                                    onPressed: (){
                                      setState(() {
                                        selected = 'Female';
                                      });
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
                                  width: screenSize.width * 0.6,
                                  height: screenSize.height * 0.06,
                                  child: CustomButton(
                                  text: 'Inscribirse', 
                                  isSelected: false,
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