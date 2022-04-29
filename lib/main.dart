import 'package:flutter/material.dart';
import 'package:tittok/accueil.dart';
import 'package:tittok/decovrir.dart';
import 'package:tittok/mesage.dart';
import 'package:tittok/profill.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Decouvrir(),
    );
  }
}


