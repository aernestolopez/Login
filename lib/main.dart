// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:login/terminos.dart';

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
        body: cuerpo(context) 
    );
  }
}


Widget cuerpo(BuildContext context){
  return Container(
    decoration: BoxDecoration(
      image:DecorationImage(image: NetworkImage("https://cdna.artstation.com/p/assets/images/images/043/233/328/large/piscesgraphics-jinx-splash-ss.jpg?1636667954"),
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
            SizedBox(height:10,),
            botonEntrar(context)

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
    child: SizedBox(
      width: 250.0,
      child: TextField(
        decoration: InputDecoration(
          hintText: "User",
          fillColor: Colors.white,
          filled: true
        ),
      ),
    ),
  );
}

Widget campoContrasenia(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal:10, vertical: 5),
    child: SizedBox(
      width: 250.0,
      child: TextField(
        obscureText:true,
        decoration: InputDecoration(
          hintText: "Password",
          fillColor: Colors.white,
          filled: true
        ),
      ),
    ),
  );
}

Widget botonEntrar(BuildContext context){
  return TextButton(
    onPressed: (){
     Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> const Pagina()),
      );
    },
    style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)
      ),
    child: Text("Entrar", style: TextStyle(fontSize: 25)),
  );
}