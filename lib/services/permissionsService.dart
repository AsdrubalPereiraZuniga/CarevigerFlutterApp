import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

// microphone permision
Future<void> requestMicrophonePermission() async {
    var status = await Permission.microphone.status;
    if (status.isDenied) {
      // Pedir el permiso
      status = await Permission.microphone.request();
      if (status.isGranted) {
        print('Permiso de micrófono concedido');
      } else {
        print('Permiso de micrófono denegado');
      }
    }
    else{
      print("Permiso de micro concedido");
    }
  }  

// make call and read contact permissions
Future<bool> requestPermissionsContactsAndCall() async {
  // Pedir permiso de contactos
  var contactPermission = await Permission.contacts.status;

  if(contactPermission.isDenied){
    contactPermission = await Permission.contacts.request();
    
    if(contactPermission.isGranted){
      print('Permiso de contactos concebido');
    }
  }

  // Pedir permiso para realizar llamadas
  var callPermission = await Permission.phone.status;
  if (!callPermission.isGranted) {
    callPermission = await Permission.phone.request();
  }

  if (contactPermission.isGranted && callPermission.isGranted) {
    print('Permisos de contactos y llamadas concedidos');
    return true;
  } else {
    print('Permisos para contactos y llamadas denegados');
    return false;
  }  
}

Future<void> requestAlarmPermission() async {
  var status = await Permission.scheduleExactAlarm.status;

  if(status.isDenied){
    status = await Permission.scheduleExactAlarm.request();

    if(status.isGranted){
      print("Permiso de alarma: $status");
    }
  }     
}

Future<void> requestVideoCameraPermission() async {
  
  var status = await Permission.camera.status;

  if(status.isDenied){
    print('permiso de camara denegado');
    status = await Permission.camera.request();

    if(status.isGranted){
      print("Permiso de camara: $status");
    }
  }
}