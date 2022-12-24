// import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDilogOS(context) {
    showCupertinoDialog(context: context, 
    builder: (context) {
      return CupertinoAlertDialog(
        title: const Text('Alerta'),
        content: const Text('Este es un mensaje de alerta'),
        actions: [
          CupertinoDialogAction(
            child: const Text('Cancelar'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoDialogAction(
            child: const Text('Aceptar'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    }
    );
  }


  void displayDialogAndroid (context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Alerta'),
          // content: const Text('Este es un mensaje de alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es un mensaje de alerta'),
              SizedBox(height: 20),
              Text('Este es otro mensaje de alerta'),
              SizedBox(height: 20),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Aceptar'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
           child: const Text('Mostrar alerta'),
           onPressed: () => displayDialogAndroid(context),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        }
        ),
    );
  }
}