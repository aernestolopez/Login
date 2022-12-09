// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Pagina extends StatelessWidget {
  const Pagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Términos y Condiciones"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Términos y Condiciones", 
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Text("Para usar la aplicación es necesario que aceptes los términos y condiciones",
            style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
            SizedBox(height: 15,),
            Text("Acepta que sus datos puedan ser utilizados con fines lucrativos.",
            style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
            SizedBox(height: 15,),
            Text("Acepta que esta aplicación podría causarle dependencia al LoL, quererse poco y quedarse sin amigos.",
            style: TextStyle(fontSize: 16), textAlign: TextAlign.justify),
            SizedBox(height: 15,),
            ElevatedButton(
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              padding: EdgeInsets.all(15)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Acepto todo", style: TextStyle(fontSize: 25.0),),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
             ), 
             onPressed: (){

              Navigator.pop(context);
             }),
          ],
        ),
      ),
    );
  }
}