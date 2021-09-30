import 'package:carwash/screens/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:carwash/screens/myHomePage/myHomePage.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CarWash',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      home:MyHomePage()
    );
  }
}

