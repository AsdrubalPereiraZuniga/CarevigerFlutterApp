
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainWidget extends StatelessWidget{

  final Widget mainChild;

  const MainWidget({ super.key, required this.mainChild });

  @override
  Widget build(BuildContext context) { 
    var screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(              
        backgroundColor: const Color.fromARGB(255, 71, 73, 75),
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
                top: 5,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: screenSize.width,
                    height: screenSize.height * 0.07,
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
                  mainChild
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}