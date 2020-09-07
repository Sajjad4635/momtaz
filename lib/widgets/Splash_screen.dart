import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity/connectivity.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void navigationToPhone() {
    Navigator.of(context).pushReplacementNamed('/phoneNumber');
  }

  void navigationToFirstScreen() {
    Navigator.of(context).pushReplacementNamed('/FirstScreen');
  }

  @override
  void initState() {
    super.initState();
    chekLogin();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: color,
      body: new Center(
        child: new Image.asset('images/owl.png'),
      ),
    );
  }

  var token;

  chekLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    token = prefs.getString('myIp_token');

    if (await checkInternetConnection()) {
      if (token == null) {
        Timer(Duration(seconds: 3), navigationToPhone);
      } else {
        Timer(Duration(seconds: 3), navigationToFirstScreen);
      }
    } else {
      _scaffoldKey.currentState.showSnackBar(new SnackBar(
          duration: new Duration(hours: 2),
          content: new GestureDetector(
              onTap: () {
                _scaffoldKey.currentState.hideCurrentSnackBar();
                chekLogin();
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    Text(
                      'شما آفلاین هستید برای تلاش مجدد کلیک کنید!',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontFamily: 'Aviny', fontSize: 18.0),
                    ),
                    Icon(
                      Icons.signal_wifi_off,
                      color: Colors.white,
                    )
                  ],
                ),
              ))));
    }
  }

  Future<bool> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi;
  }
}
