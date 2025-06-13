
import 'package:careviger/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:careviger/widgets/buttons/custom_button.dart';
import 'package:careviger/widgets/textFormField/custom_textFormField.dart';
import 'package:careviger/widgets/textFormField/custom_passwordFormField.dart';

class LoginPageWidget extends StatefulWidget{  
  const LoginPageWidget({super.key});

  @override
 State<LoginPageWidget> createState() => _LoginPageWidget();
}

class _LoginPageWidget extends State<LoginPageWidget>{  

  @override
  Widget build(BuildContext context) { 
    var screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(              
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          top: true,
          child: Container(
            width: screenSize.width,
            height: screenSize.height,
            decoration: BoxDecoration(
              color: Color(0xFF2A5650),
            ),
            child: SingleChildScrollView(            
              padding: EdgeInsets.only(
                top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: screenSize.width,
                    height: screenSize.height * 0.10,
                    decoration: BoxDecoration(
                      color: Color(0xFF2A5650),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            'CAREGIVER',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 45, 
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.0,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  color: Colors.white24,
                                  offset: Offset(2, 2),
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 13.0),
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
                  ),
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 570,
                      ),
                      child: Container(
                        width: screenSize.width * 0.90,
                        height: screenSize.height * 0.83,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '¡Bienvenido!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.robotoCondensed(
                                fontSize: 36,                          
                                fontWeight: FontWeight.w600,                                                    
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0.0,
                                color: Colors.white                        
                              ), // style
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 24),
                              child: SizedBox(
                                width: screenSize.width * 0.80,                            
                                child: Text(
                                'Complete la siguiente información para acceder a su cuenta.',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,                                                    
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 0.0,
                                    color: Colors.white                        
                                  ), // style
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                              child: SizedBox(
                                width: screenSize.width * 0.80,
                                child: CustomTextformfield(
                                  text: 'Email'
                                ),
                              ),   
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                              child: SizedBox(
                                width: screenSize.width * 0.80,
                                child: CustomPasswordformfield(
                                  text: 'Contraseña'
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                              child: SizedBox(
                                width: screenSize.width * 0.8,
                                height: 44,
                                child: CustomButton(
                                  text: 'Acceder', 
                                  isSelected: false,
                                  onPressed: (){
                                    Navigator.pushReplacementNamed(context, '/main');
                                  }                                                            
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(16, 5, 16, 16),
                              child: Text(
                                'O inicia sesión con',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,                                                    
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0.0,
                                  color: Colors.white                        
                                ), // style
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 10, 16),
                              child: SizedBox(
                                width: screenSize.width * 0.8,
                                child: ElevatedButton.icon(
                                  onPressed: (){
                                    print('print button');
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:Color.fromARGB(255, 132, 186, 209),
                                      elevation: 3,                                                              
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),                                  
                                      ),
                                    ), //style
                                  icon: FaIcon(
                                    FontAwesomeIcons.google,
                                    size: 20,
                                  ),
                                  label: Text(
                                    'Google',
                                    style: GoogleFonts.robotoCondensed(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,                                                    
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 0.0,
                                      color: Colors.white
                                    ), // style
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 10, 16),
                              child: Text(
                                '¿No tienes una cuenta?',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,                                                    
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0.0,
                                  color: Colors.white                        
                                ), // style
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 10, 16),
                              child: SizedBox(
                                width: screenSize.width * 0.55,
                                child: CustomButton(
                                  text: 'Inscríbete', 
                                  isSelected: false,
                                  onPressed: (){
                                    Navigator.pushReplacementNamed(context, '/register');
                                  }                                                            
                                ),
                              ),
                            ),
                          ], //children
                        ),
                      ),
                    ),
                  ),
                ], // children
              ),
            ),
          ),
        ),
      ),
    );
  } //build
} // class