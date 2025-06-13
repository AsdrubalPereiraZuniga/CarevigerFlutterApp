
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter/material.dart';


Future<void> makeCall(BuildContext context, String contactName) async {  

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      content: Row(
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 20),
          Expanded(child: Text("Intentando realizar llamada...")),
        ],
      ),
    ),
  );

  // Buscar el contacto
  final contacts = await FlutterContacts.getContacts(
    withProperties: true,
    withPhoto: false,
  ); 

  // Buscar por nombre (puedes hacer esto más flexible si quieres)
  final matchingContact = contacts.firstWhere(
    (c) => c.displayName.toLowerCase().contains(contactName.toLowerCase()),
    orElse: () => Contact(),
  );

  if (matchingContact.id.isEmpty) {
    Navigator.of(context).pop();
    print('Contacto no encontrado');
    return;
  }

  if (matchingContact.phones.isEmpty) {
    Navigator.of(context).pop();
    print('Contacto no tiene número telefónico');
    return;
  }

  final phoneNumber = matchingContact.phones.first.normalizedNumber;

  // Verificar permiso para realizar llamadas
  final callPermission = await Permission.phone.status;
  if (!callPermission.isGranted) {
    final result = await Permission.phone.request();
    if (!result.isGranted) {
      Navigator.of(context).pop();
      print('Permiso para llamadas denegado');
      return;
    }
  }

  // Realizar la llamada
  bool? res = await FlutterPhoneDirectCaller.callNumber(phoneNumber);
  if (res == true) {
    print('Llamada iniciada');
  } else {
    Navigator.of(context).pop();
    print('No se pudo iniciar la llamada');
  }
  Navigator.of(context).pop();
}