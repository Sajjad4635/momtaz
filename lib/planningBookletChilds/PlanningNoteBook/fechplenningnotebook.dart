import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/planningBookletChilds/PlanningNoteBook/planningNoteBookModel.dart';
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
      print(responseBody['day']);
      return {"day": responseBody['day'], "date": responseBody['date']};
    }
  }
}

class get_Khodnevisi_Info {
  static Future<Map> get_khodnevisi_info(numOfDay, clickDay) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    print(prefs.getString('myIp_token'));
    print('${numOfDay.toString()}');
    print('${clickDay.toString()}');
    final response = await http.post(api.siteName + '/api/get_edu', body: {
      "token": prefs.getString('myIp_token'),
      "toDay": '${numOfDay.toString()}',
      "clickDay": '${clickDay.toString()}'
    });

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      print(responseBody);

      List<getLessonModle> getLessons = [];
      responseBody['edu'].forEach((item) {
        getLessons.add(getLessonModle.fromJson(item));
      });
      return {
        "getKhodnevisiDetail": getLessons,
      };
    }
  }
}

class send_Khodnevisi_Info {
  static Future<Map> send_khodnevisi_info(numOfDay, clickDay) async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await http.post(api.siteName + '/api/get_edu', body: {
      "token": prefs.getString('myIp_token'),
      "toDay": '${numOfDay.toString()}',
      "clickDay": '${clickDay.toString()}'
    });

    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      print(responseBody);

      List<getLessonModle> getLessons = [];
      responseBody['edu'].forEach((item) {
        getLessons.add(getLessonModle.fromJson(item));
      });
      return {
        "getKhodnevisiDetail": getLessons,
      };
    }
  }
}
