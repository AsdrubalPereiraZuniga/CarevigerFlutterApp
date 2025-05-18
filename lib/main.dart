import 'package:flutter/material.dart';
import 'screens/homePage.dart';
import 'screens/loginPage.dart';
import 'screens/registerPage.dart';

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
        '/': (context) => const LoginPageWidget(),
        /*
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        */
      },
    );
  }
}
