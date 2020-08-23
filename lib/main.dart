import 'package:flutter/material.dart';
import 'package:mmtaz/Screens/FirstScreen.dart';
import 'package:mmtaz/widgets/Splash_screen.dart';
import 'package:mmtaz/widgets/login.dart';

void main() async {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/phoneNumber': (BuildContext context) => new phoneNumber(),
      '/verificationCode': (BuildContext context) => new verificationCode(),
      '/register': (BuildContext context) => new register(),
      '/FirstScreen': (BuildContext context) => new FirstScreen(),
    },
  ));
}