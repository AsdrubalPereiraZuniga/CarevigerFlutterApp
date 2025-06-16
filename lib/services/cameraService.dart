
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void showAlarmDialog(BuildContext context ) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      content: Row(
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 20),
          Expanded(child: Text("Intentando abrir camara en modo de video...")),
        ],
      ),
    ),
  );  
}

const platform = MethodChannel("video_camera_channel");
const platformCamera = MethodChannel("camera_channel");

Future<void> setVideoCamera() async {
  
  try {
    await platform.invokeMethod('openCameraVideo');    
  } catch (e) {
    print("Error al abrir la camara en modo video: $e");
  }

}

Future<void> setCamera() async {
  
  try {
    await platformCamera.invokeMethod('openCameraPhoto');    
  } catch (e) {
    print("Error al abrir la camara en modo video: $e");
  }

}

Future<void> makeVideo(BuildContext context) async {  

  showAlarmDialog(context);  

  setVideoCamera(); 
  
  Navigator.of(context).pop();
}

Future<void> makePhoto(BuildContext context) async {  

  showAlarmDialog(context);  

  setCamera(); 
  
  Navigator.of(context).pop();
}