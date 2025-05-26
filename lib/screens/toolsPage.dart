import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToolsPageWidget extends StatelessWidget{
  const ToolsPageWidget({super.key});

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
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  decoration: BoxDecoration(
                    color: Color(0xFF2A5650),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
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
                                  color: Colors.white24,
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
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.15,
                  decoration: BoxDecoration(
                    color: Color(0xFF2A5650),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                        onPressed: ()=>(), 
                        icon: Icon(
                          Icons.menu_open_outlined,
                          size: 80,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Tools',
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
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.30,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: ()=>(), 
                                icon: Icon(Icons.manage_accounts_outlined),
                                iconSize: 80,
                                color: Colors.white,
                              ),
                              Text(
                                'User',
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 1.0,
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: ()=>(), 
                                icon: Image.asset(
                                  'images/command-line.png',
                                  width: 100,
                                  height: 80,
                                ),
                              ),                                                                    
                              Text(
                                'Commands',
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 1.0,
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
                        ],
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