import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/planningOfficeChilds/planningnotebookModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class get_Days_Info {
  static Future<Map> get_days_info() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final response = await http.post(api.siteName + '/api/edu_plan', body: {
      "token": prefs.getString('myIp_token'),
    });
    print(response.statusCode);

    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      print(responseBody);

      var day = json.decode(response.body)['day'];
      var date = json.decode(response.body)['day'];

//      List<Lesson_Model> getLesson = [];
//      responseBody['lesson'].forEach((item) {
//        getLesson.add(Lesson_Model.fromJson(item));
//      });
      return {

        "day": day,
        "date": date
      };
    }
  }
}


class get_Khodnevisi_Info {
  static Future<Map> get_khodnevisi_info() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final response = await http.post(api.siteName + '/api/edu_plan', body: {
      "token": prefs.getString('myIp_token'),
    });
    print(response.statusCode);

    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      print(responseBody);

      List<getKhodnevisiInfo> getLessons = [];
      responseBody['lesson'].forEach((item) {
        getLessons.add(getKhodnevisiInfo.fromJson(item));
      });
      return {
        "getKhodnevisiDetail": getLessons,
      };
    }
  }
}
