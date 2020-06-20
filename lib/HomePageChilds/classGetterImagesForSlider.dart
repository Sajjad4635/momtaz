//import 'package:flutter/material.dart';
//import 'dart:convert';
//import 'package:http/http.dart' as http;
//import 'package:momtaz2/models/homePageModels.dart';
//
//class imagesGetter {
//  static Future<Map> getImages() async {
//    final response = await http.get('192.168.1.107:8080/get_imag_slide');
//
//    if (response.statusCode == 200) {
//      var responseBody = json.decode(response.body);
//      List <imageSlider> imageslider = [];
//
//      responseBody.forEach((item){
//        imageslider.add(imageSlider.fromJson(item));
//      });
//      return{
//        "vlaue" : imageslider
//      };
//    }
//  }
//}
