import 'package:careviger/widgets/mainWidget/mainWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CommandsPageWidget extends StatelessWidget{
  const CommandsPageWidget({super.key});

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
                  'Comandos',
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
            height: screenSize.height * 1.0,            
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
                      width: screenSize.width * 0.43,
                      height: screenSize.height * 0.30,
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
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/commandPage/whatsapp');
                            }, 
                            icon: Icon(
                              Icons.call,
                             size: 80,
                             color: Colors.white,
                            ),
                          ),
                          Text(
                            'Llamadas',
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
                    Container(
                      width: screenSize.width * 0.43,
                      height: screenSize.height * 0.30,
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
                        children: [
                          IconButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/commandPage/alarm');
                          }, 
                          icon: Icon(
                            Icons.alarm_sharp,
                            color: Colors.white,
                            size: 80,
                            ),
                          ),                                                                    
                          Text(
                            'Alarmas',
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
                SizedBox(height: 15),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: screenSize.width * 0.43,
                      height: screenSize.height * 0.30,
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
                        children: [
                          IconButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, '/commandPage/sms');
                          }, 
                          icon: Icon(Icons.message_outlined),
                          color: Colors.white,
                          iconSize: 80,
                          ),
                          Text(
                            'Mensajes',
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
                            'SMS',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 20,
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
                    Container(
                      width: screenSize.width * 0.43,
                      height: screenSize.height * 0.30,
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
                        children: [
                          IconButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/commandPage/camera');
                          }, 
                          icon: Icon(Icons.camera_alt_outlined),
                          color: Colors.white,                              
                          iconSize: 90,
                          ),                       
                          Text(
                            'Camara',
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
                SizedBox(height: 15),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: screenSize.width * 0.43,
                      height: screenSize.height * 0.30,
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
                        children: [
                          IconButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, '/commandPage/video');
                          }, 
                          icon: Icon(Icons.video_camera_back_rounded),
                          color: Colors.white,
                          iconSize: 80,
                          ),
                          Text(
                            'Video',
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