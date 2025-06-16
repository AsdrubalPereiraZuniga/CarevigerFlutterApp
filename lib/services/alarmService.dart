
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/services.dart';

const platform = MethodChannel("alarm_channel");

void showAlarmDialog(BuildContext context ) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      content: Row(
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 20),
          Expanded(child: Text("Intentando agendar la alarma...")),
        ],
      ),
    ),
  );  
}

Future<void> setNativeAlarm(int hour, int minute, String message) async {
  print('THE PLATFORM');
  print(platform);
  try {
    await platform.invokeMethod('setNativeAlarm', {"hour": hour, "minute": minute, "message": message});
    //await platform.invokeMethod("setNativeAlarm", {"hour": 7, "minute": 30});
  } catch (e) {
    print("Error al abrir la app de alarmas: $e");
  }
}

Future<void> makeAlarm(BuildContext context, String alarmText) async {  

  print(alarmText);

  showAlarmDialog(context);

  RegExp regex = RegExp(r"(\d{1,2})(?::(\d{2}))?\s*(a\.m|p\.m|am|pm)\s*(.*)", caseSensitive: false);
  Match? match = regex.firstMatch(alarmText);

  
  if (match != null) {
    int hour = int.parse(match.group(1)!);
    print('HOUR: ');
    print(hour);
    print('MINUTE: ');

    int minute = match.group(2) != null ? int.parse(match.group(2)!) : 0;
    print(minute);
    bool isPM = match.group(3)!.toLowerCase().contains("p");

    String message = match.group(4)?.trim() ?? "Alarma";

    if (isPM && hour < 12){
      hour += 12; 
      print('IS PM');
    } 
    if (!isPM && hour == 12) {
      hour = 0;
      print('IS AM');
    }

    setNativeAlarm(hour, minute, message);

  }      
  
  Navigator.of(context).pop();
}