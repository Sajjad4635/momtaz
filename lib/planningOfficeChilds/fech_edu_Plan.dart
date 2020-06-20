import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/models/lessonModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class get_Edu_Plan {
  static Future<Map> get_edu_plan() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final response = await http.post(api.siteName + '/api/edu_plan', body: {
      "token": prefs.getString('myIp_token'),
    });
    print(response.statusCode);

    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      print(responseBody);

      List<Lesson_Model> getLesson = [];
      responseBody.forEach((item) {
        getLesson.add(Lesson_Model.fromJson(item));
      });
      return {
        "getLesson": getLesson,
        "day": responseBody['day'],
        "date": responseBody['date']

      };
    }
  }
}
