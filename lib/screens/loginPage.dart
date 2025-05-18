import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPageWidget extends StatelessWidget{
  const LoginPageWidget({super.key});
   
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(   
        resizeToAvoidBottomInset: true,     
        backgroundColor: Color(0xFF71FF89),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              top: 15,
              bottom: MediaQuery.of(context).viewInsets.bottom, // Espacio para el teclado
            ),                  
            child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.10,
                decoration: BoxDecoration(
                  color: Color(0xFF71FF89),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        'CAREVIGER',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoCondensed(
                          fontSize: 45, 
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0.0,
                          color: Colors.black,
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'images/sound-waves.png',
                        width: 70,
                        height: 45,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 570,
                  ),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.90,
                    height: MediaQuery.sizeOf(context).height * 0.83,
                    decoration: BoxDecoration(
                      color: Color(0xFF2A5650),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '¡Welcome!',
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
                            width: MediaQuery.sizeOf(context).width * 0.80,                            
                            child: Text(
                            'Fill out the information below in order to access your account.',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.robotoCondensed(
                                fontSize: 18,
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
                            width: MediaQuery.sizeOf(context).width * 0.80,
                            child: TextFormField(                              
                              autofocus: true,
                              autofillHints: [AutofillHints.email],
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email',
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
                                    color: Color(0xFF1D8538),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                floatingLabelStyle: GoogleFonts.robotoCondensed(
                                  fontSize: 25, // tamaño cuando el label flota
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),                                                             
                                filled: true,
                                fillColor: Color(0xFFACC9AC),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
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
                                    color: Color(0xFF1D8538),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                floatingLabelStyle: GoogleFonts.robotoCondensed(
                                  fontSize: 25, // tamaño cuando el label flota
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),                                
                                filled: true,
                                fillColor: Color(0xFFACC9AC),
                                suffixIcon: Icon(
                                  //_model.passwordVisibility
                                    /*?*/ Icons.visibility_outlined
                                    /*: Icons.visibility_off_outlined*/,
                                  color: Color(0xFF57636C),
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            height: 44,
                            child: ElevatedButton(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF71FF89),
                                elevation: 3,                                
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(
                                    color: Color(0xFF71FF89),
                                    width: 2,
                                  ),
                                ),
                              ), //style
                              child: Text(
                                'Sing In',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 5, 16, 16),
                          child: Text(
                            'Or sing in with',
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
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            child: ElevatedButton.icon(
                              onPressed: (){
                                print('print button');
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFACC9AC),
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
                                  color: Colors.black
                                ), // style
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 10, 16),
                          child: Text(
                            '¿Don´t have an account?',
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
                            width: MediaQuery.sizeOf(context).width * 0.55,
                            child: ElevatedButton(
                              onPressed: (){
                                print('print button');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF71FF89),                                
                                elevation: 3,                                
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(
                                    color: Color(0xFF71FF89),
                                    width: 2,
                                  ),
                                ),
                              ), //style
                              child: Text(
                                'Sing Up There',
                                style:GoogleFonts.robotoCondensed(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,                                                    
                                    fontStyle: FontStyle.normal,
                                    color: Colors.black,
                                  ),
                              ),
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
    );
  } //build
} // class