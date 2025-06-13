import 'package:careviger/widgets/mainWidget/mainWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserConfigPageWidget extends StatelessWidget{
  const UserConfigPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return MainWidget(
      mainChild: Column(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.15,
            decoration: BoxDecoration(
              color: Color(0xFF2A5650),              
            ),            
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/main');
                  },
                  icon: Icon(
                    Icons.menu_open_outlined,
                    size: 80,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Ajustes',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.0,
                    color: Colors.white, 
                    shadows: [
                      Shadow(
                        color: Colors.white54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                ),
              ],                  
            ),
          ),
          Container(
            width: screenSize.width * 0.90,
            height: screenSize.height * 0.60,                        
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: screenSize.width * 0.40,
                      height: screenSize.height * 0.40,                      
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.shade800, // color de la sombra
                            spreadRadius: 5,
                            blurRadius: 10, 
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,                      
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: IconButton(
                              onPressed: (){
                                Navigator.pushReplacementNamed(context, '/editProfile');
                              }, 
                              icon: Icon(Icons.edit_note_sharp),
                              iconSize: 80,
                              color: Colors.white,
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                            ),
                          ),
                          Text(
                            'Edita',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 1.0,
                              color: Colors.white, 
                              shadows: [
                                Shadow(
                                  color: Colors.white54,
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 1.0,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Tú Perfil',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 1.0,
                              color: Colors.white, 
                              shadows: [
                                Shadow(
                                  color: Colors.white54,
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 1.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: screenSize.width * 0.40,
                      height: screenSize.height * 0.40,                      
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.shade800, // color de la sombra
                            spreadRadius: 5,
                            blurRadius: 10, 
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: ()=>(), 
                            icon: Icon(Icons.logout_outlined),
                            iconSize: 70,
                            color: Colors.white,
                            padding: EdgeInsets.zero, // Elimina espacio interno
                            constraints: BoxConstraints(),
                          ),                                                                  
                          Text(
                            'Cerrar',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 1.0,
                              color: Colors.white, 
                              shadows: [
                                Shadow(
                                  color: Colors.white54,
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                          ), 
                          Text(
                            'sesión',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 1.0,
                              color: Colors.white, 
                              shadows: [
                                Shadow(
                                  color: Colors.white54,
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                          ), 
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );        
  }
}