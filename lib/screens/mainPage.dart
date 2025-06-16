import 'package:careviger/services/alarmService.dart';
import 'package:careviger/services/callService.dart';
import 'package:careviger/services/cameraService.dart';
import 'package:careviger/widgets/mainWidget/mainWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:careviger/services/voiceService.dart';
import 'package:careviger/services/permissionsService.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPageWidget extends StatefulWidget{
  const MainPageWidget({super.key});

  @override
  _UserVoiceState createState() => _UserVoiceState();
}

class _UserVoiceState extends State<MainPageWidget>{
    
  bool _isListening = false;
  String _userText = '';

  @override
  void initState() {
    super.initState();  
    requestMicrophonePermission();
    requestPermissionsContactsAndCall();
    requestAlarmPermission();  
    requestVideoCameraPermission();      
  }     

  Future<void> _startListening() async {
    setState(() {
      _isListening = true;
      _userText = 'Escuchando...';
    });    

    final voiceResult = await VoiceService.startRecognition();

    setState(() {
      _isListening = false;
      _userText = voiceResult ?? 'No se detectó voz.';
    });

    if(_userText.toLowerCase().startsWith('llamar a')){
      String contactName = _userText.substring(9).trim();
      makeCall(context, contactName);
    }
    else if(_userText.toLowerCase().startsWith('alarma a la')){

      String alarmText = _userText.substring(12).trim();          
      
      makeAlarm(context, alarmText);
    }
    else if(_userText.toLowerCase().startsWith('alarma a las')){            

      String alarmText = _userText.substring(13).trim();          
      
      makeAlarm(context, alarmText);
    }
    
    else if( _userText.toLowerCase().startsWith('video') ){      

      makeVideo(context);
    }

    else if( _userText.toLowerCase().startsWith('foto') ){

      makePhoto(context);
    }

  }
  
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
                    Navigator.pushReplacementNamed(context, '/tools');
                  }, 
                  icon: Icon(
                    Icons.menu,
                    size: 75,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.30,
            decoration: BoxDecoration(
              color: Color(0xFF2A5650),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    _userText.isEmpty ? 'Habla y verás el texto aquí...': _userText,
                    maxLines: 3,
                    minFontSize: 16,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      letterSpacing: 1.0,
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
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.40,                    
            decoration: BoxDecoration(
              color: Color(0xFF2A5650),                      
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '¡Presiona y habla!',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.0,
                    color: Colors.white, 
                    shadows: [
                      Shadow(
                        color: Colors.white54,
                        offset: Offset(1, 1),
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onLongPress: _startListening,
                  child: Container(
                    width: screenSize.width * 0.5,
                    height: screenSize.width * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueGrey,
                      border: Border.all(color: Colors.white, width: 5),
                    ),
                    child: Icon(
                      Icons.mic,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ], // column children
      )
    );
  }
}