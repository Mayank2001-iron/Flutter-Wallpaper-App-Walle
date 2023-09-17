import 'package:flutter/material.dart';
import 'package:flutter_application_walle/views/screens/categoryScreen.dart';
import 'package:flutter_application_walle/views/screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Walle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
       primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),

      
    );
  }
}

