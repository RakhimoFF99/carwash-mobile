import 'package:carwash/screens/login_page//login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:carwash/screens/myhome_page//myHomePage.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());

}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  void configLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.dualRing
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.yellow
      ..backgroundColor = Colors.green
      ..indicatorColor = Colors.yellow
      ..textColor = Colors.yellow
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = true
      ..dismissOnTap = false;
    // ..customAnimation = CustomAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CarWash',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: EasyLoading.init(),
      home:Login()
    );
  }
}


