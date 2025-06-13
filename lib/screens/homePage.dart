import 'package:careviger/widgets/mainWidget/mainWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget{  
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}
class _HomePageWidgetState extends State<HomePageWidget>{

  @override
  void initState(){
    super.initState();

    // await for 3 segs
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return MainWidget(
      mainChild: Column(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.32,
            decoration: BoxDecoration(
              color: Color(0xFF2A5650),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/LogoCareviger.png',
                  width: screenSize.width,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.25,
            decoration: BoxDecoration(
              color: Color(0xFF2A5650),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    '¡Hablame para ayudarte!',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 30,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );                            
  }
}
