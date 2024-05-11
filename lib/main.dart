

import 'package:comp/screans/home.dart';
import 'package:comp/screans/updatepage.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( routes: {
      'homepage':(context)=>(homepage()),
      'updatepage':(context) => (updatepage())
    },
      initialRoute: 'homepage'
      ,);
  }
}


