import 'package:careviger/widgets/mainWidget/mainWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';


class CameraPageWidget extends StatelessWidget{
  const CameraPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return MainWidget(
      mainChild: Column(
        mainAxisSize: MainAxisSize.max,
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
                  'Camera',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.0,
                    color: Colors.white, 
                    shadows: [
                      Shadow(
                        color: Colors.white54,                        
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                ),
              ],                  
            ),
          ),
          Container(
            width: screenSize.width * 0.95,
            height: screenSize.height,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: screenSize.width * 0.95,
                      height: screenSize.height * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.shade800, // color de la sombra
                            spreadRadius: 5,
                            blurRadius: 10, 
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [                          
                          Text(
                            'Pasos para capturar una foto',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 1.0,
                              color: Colors.white, 
                              shadows: [
                                Shadow(
                                  color: Colors.white54,                                  
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
                SizedBox(height: 30),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.one,
                      color: Colors.white,
                      size: 35,
                    ),
                    Container(
                      width: screenSize.width * 0.80,
                      height: screenSize.height * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.shade800, // color de la sombra
                            spreadRadius: 5,
                            blurRadius: 10, 
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [                          
                          Text(
                            'Ve a la pantalla de inicio',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 1.0,
                              color: Colors.white, 
                              shadows: [
                                Shadow(
                                  color: Colors.white54,                                  
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
                SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.two,
                      color: Colors.white,
                      size: 35,
                    ),
                    Container(
                      width: screenSize.width * 0.80,
                      height: screenSize.height * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.shade800, // color de la sombra
                            spreadRadius: 5,
                            blurRadius: 10, 
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [                          
                          Text(
                            'Presiona el micrófono',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 1.0,
                              color: Colors.white, 
                              shadows: [
                                Shadow(
                                  color: Colors.white54,                                  
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
                SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.three,
                      color: Colors.white,
                      size: 35,
                    ),
                    Container(
                      width: screenSize.width * 0.80,
                      height: screenSize.height * 0.10,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [                          
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AutoSizeText.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: 'Di el comando '),
                                  TextSpan(text: '"Foto" ', style: TextStyle(color: Colors.amber)),                                  
                                ],
                              ),
                              maxLines: 3,
                              minFontSize: 25,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.robotoCondensed(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                letterSpacing: 1.0,
                                shadows: [
                                  Shadow(
                                    color: Colors.white54,                                    
                                    blurRadius: 2.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],                
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.four,
                      color: Colors.white,
                      size: 35,
                    ),
                    Container(
                      width: screenSize.width * 0.80,
                      height: screenSize.height * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [                          
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AutoSizeText.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: 'Luego, suelta el botón y la app se encargará de encender la cámara en modo FOTO'),                                  
                                ],
                              ),
                              maxLines: 5,
                              minFontSize: 25,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.robotoCondensed(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                letterSpacing: 1.0,
                                shadows: [
                                  Shadow(
                                    color: Colors.white54,                                    
                                    blurRadius: 2.0,
                                  ),
                                ],
                              ),
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