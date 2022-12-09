// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      theme: ThemeData(fontFamily: 'Arcane'),
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: cuerpo() 
    );
  }
}


Widget cuerpo(){
  return Container(
    decoration: BoxDecoration(
      image:DecorationImage(image: NetworkImage("https://r1.ilikewallpaper.net/iphone-8-plus-wallpapers/download-148439/arcane-league-of-legends.jpg"),
        fit: BoxFit.cover
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            nombre(),
            campoUsuario(),
            campoContrasenia(),
            botonEntrar()

          ],
          ),
        ),
  );
}

Widget nombre(){
  return Text("Sign in", style: TextStyle(color:  Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),);
}

Widget campoUsuario(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal:10, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );
}

Widget campoContrasenia(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal:10, vertical: 5),
    child: TextField(
      obscureText:true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );
}

Widget botonEntrar(){
  return TextButton(
    onPressed: (){},
    style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)
      ),
    child: Text("Entrar"),
  );
}