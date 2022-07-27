import 'package:flutter/material.dart';
import 'package:flutter_application_1/wigets/drawer.dart';
import 'package:flutter_application_1/wigets/homepage.dart';
import 'searchbar.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Builder(builder: (BuildContext context){
        return Home_page();
      },
      ),
      
    );
  }
}