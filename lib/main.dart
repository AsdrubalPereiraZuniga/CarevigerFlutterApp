import 'package:flutter/material.dart';
import 'screens/homePage.dart';
import 'screens/loginPage.dart';
import 'screens/registerPage.dart';
import 'screens/mainPage.dart';
import 'screens/toolsPage.dart';

void main () {
  runApp ( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp( {super.key} );

  @override
  Widget build ( BuildContext context ) {
    return MaterialApp (  
      debugShowCheckedModeBanner: false,    
      title : 'CAREVIGER',
      initialRoute : '/',
      routes : {   

        '/': (context) => const HomePageWidget(),      
        '/login': (context) => LoginPageWidget(),
        '/register': (context) => RegisterPageWidget(),
        '/main' : (context) => MainPageWidget(),
        '/tools' : (context) => ToolsPageWidget(),              
      },
    );
  }
}
