import 'package:flutter/material.dart';
import 'package:todo_app/pages/home.dart';
import 'package:todo_app/screens/homee.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TO-Do App',
      // theme: ThemeData(
      //   // primarySwatch: Colors.lightBlue,
      // ),
        home: Home(
        ),
    );
  }
}
