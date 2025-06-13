import 'package:careviger/screens/commandPage/alarm.dart';
import 'package:careviger/screens/commandPage/call.dart';
import 'package:careviger/screens/commandPage/photo.dart';
import 'package:careviger/screens/commandPage/sms.dart';
import 'package:careviger/screens/commandPage/video.dart';

import 'screens/commandsPage.dart';
import 'screens/userConfig.dart';
import 'package:flutter/material.dart';
import 'screens/homePage.dart';
import 'screens/loginPage.dart';
import 'screens/registerPage.dart';
import 'screens/mainPage.dart';
import 'screens/toolsPage.dart';
import 'screens/editProfile.dart';

void main () {
  runApp ( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp( {super.key} );

  @override
  Widget build ( BuildContext context ) {
    return MaterialApp (  
      debugShowCheckedModeBanner: false,    
      title : 'CAREGIVER',
      initialRoute : '/',
      routes : {   
                      
        
        '/': (context) => const HomePageWidget(),

        '/login': (context) => LoginPageWidget(),
        '/register': (context) => RegisterPageWidget(),
        '/main' : (context) => MainPageWidget(),
        '/tools' : (context) => ToolsPageWidget(),
        '/userConfig': (context) => UserConfigPageWidget(),
        '/editProfile': (context) => EditProfilePageWidget(),
        '/commandsPage': (context) => CommandsPageWidget(),
        '/commandPage/whatsapp': (context) => CallPageWidget(),
        '/commandPage/alarm': (context) => AlarmPageWidget(),
        '/commandPage/sms': (context) => SmsPageWidget(),
        '/commandPage/camera': (context) => CameraPageWidget(),
        '/commandPage/video': (context) => VideoPageWidget(),
        
      },
    );
  }
}
