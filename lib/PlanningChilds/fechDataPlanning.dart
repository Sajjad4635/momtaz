import 'dart:convert';

import 'package:mmtaz/models/api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class get_Student_Status {
  static Future<Map> get_student_status() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getString('myIp_token'));
    var response = await http.post(api.siteName + '/api/get_status',
        body: {"token": prefs.getString('myIp_token')});
    if (response.statusCode == 200) {
      return {
        "studentStatus": json.decode(response.body)['student_status'],
    };
  }
}}