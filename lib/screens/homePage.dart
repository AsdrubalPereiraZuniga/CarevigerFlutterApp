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
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: BoxDecoration(
              color: Color(0xFF2A5650),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.32,
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
                                color: Colors.white54,
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
                          'images/white-sound-waves.png',
                          width: 70,
                          height: 45,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.32,
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
                        width: MediaQuery.sizeOf(context).width,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.25,
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
                          '¡Talk to me to help you!',
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
          ),
        ),
      ),
    );
  }
}
