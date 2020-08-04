import 'package:flutter/material.dart';
import 'package:mmtaz/Screens/FirstScreen.dart';
import 'package:mmtaz/widgets/login.dart';

void main() async{
  runApp(new MaterialApp(
    home: new FirstScreen(),
    routes: <String, WidgetBuilder>{
      '/phoneNumber': (BuildContext context) => new phoneNumber(),
      '/verificationCode': (BuildContext context) => new verificationCode(),
      '/register': (BuildContext context) => new register(),
      '/FirstScreen': (BuildContext context) => new FirstScreen(),

    },
  ));
}
//import 'dart:async';
//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//
//void main() async {
//  List aaa = await sendDataToServer();
//  runApp(MaterialApp(
//    home: Material(
//      child: Scaffold(
//        body: Container(
//            child: ListView.builder(
//          itemCount: aaa.length,
//          itemBuilder: (contex, index) {
//            return Card(
//              child: Image.network(
//                'http://192.168.1.107:8080/images/' + '${aaa[index]['vlaue']}',
//              ),
//            );
//          },
//        )),
//      ),
//    ),
//  ));
//}
//
//Future<List> sendDataToServer() async {
//  final response = await http.get('http://192.168.1.107:8080/get_imag_slide');
//  print(response.statusCode);
//  return json.decode(response.body);
//}
