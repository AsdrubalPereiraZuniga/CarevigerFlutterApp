
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:careviger/widgets/buttons/custom_button.dart';
import 'package:careviger/widgets/textFormField/custom_textFormField.dart';
import 'package:careviger/widgets/textFormField/custom_passwordFormField.dart';
import 'package:careviger/widgets/mainWidget/mainWidget.dart';

class EditProfilePageWidget extends StatelessWidget{
  const EditProfilePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return MainWidget(
      mainChild: Column(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.09,
            decoration: BoxDecoration(
              color: Color(0xFF2A5650),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                  'Perfil',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.0,
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
                ),                
              ],                                
            ),
          ),
          Text(
            'Edita tú perfil',
            style: GoogleFonts.robotoCondensed(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.normal,
              letterSpacing: 0.0,
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
          Container(
            width: screenSize.width * 0.90,
            height: screenSize.height * 0.75,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,                  
                  mainAxisAlignment: MainAxisAlignment.center,                                    
                  children: [
                    Positioned(
                      height: 555,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: CircleAvatar(
                              radius: 60.0,
                              child: ClipRRect(
                                child: Icon(
                                  Icons.face_5,
                                  size: 90,
                                ),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ), 
                          ),                          
                          Positioned(
                            bottom: 0,
                            right: 0,                            
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                 shape: BoxShape.circle,
                                  border: Border.all(                // Borde del círculo
                                    color: Colors.white,             // Color del borde
                                    width: 3,                        // Grosor del borde
                                  ),
                              ),
                              child: Icon(
                                Icons.edit,
                                size: 30,
                                color: Colors.white,
                              ), 
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top:25),
                  child: SizedBox(
                    width: screenSize.width * 0.80,
                    child: CustomTextformfield(
                      text: 'Nuevo Email'
                    ),
                  ),
                ),  
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: SizedBox(
                    width: screenSize.width * 0.80,
                    child: CustomTextformfield(
                      text: 'Nuevo nombre de usuario'
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: SizedBox(
                    width: screenSize.width * 0.80,
                    child: CustomPasswordformfield(
                      text: "New Password"
                    ),
                  ),
                ),  
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 10),
                  child: SizedBox(
                    width: screenSize.width * 0.80,
                    child: CustomPasswordformfield(
                      text: 
                      "Confirm New Password"
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,                                                     
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(13, 30, 0, 0),
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton.icon(
                          onPressed: (){
                            print('print button');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:Color.fromARGB(255, 132, 186, 209),                          
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),                                  
                            ),
                          ),
                          label: Text(
                            'Cancelar',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,                                                    
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.0,
                              color: Colors.white
                            ), // style
                          ), //style
                          icon: Icon(
                            Icons.cancel_outlined,
                            size: 30,
                            color: Colors.redAccent,
                          ),
                        ),
                      )                      
                    ),                                        
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton.icon(
                          onPressed: (){
                            print('print button');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:Color.fromARGB(255, 132, 186, 209),                          
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),                                  
                            ),
                          ),
                          label: Text(
                            'Guardar',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,                                                    
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.0,
                              color: Colors.white
                            ), // style
                          ), //style
                          icon: Icon(
                            Icons.check_circle_outline_outlined,
                            size: 30,
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                      )                      
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