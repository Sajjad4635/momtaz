import 'dart:convert';

import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/planningBookletChilds/LastWeeks/LastWeeksModel.dart';
import 'package:mmtaz/planningBookletChilds/PlanningNoteBook/planningNoteBookModel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class get_Last_Weeks_Detail {
  static Future<Map> get_last_weeks_detail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await http.post(api.siteName + '/api/all_week', body: {
      "token": prefs.getString('myIp_token'),
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      List<getLastWeeks> lastWeeks = [];
      responseBody['all_week'].forEach((item) {
        lastWeeks.add(getLastWeeks.fromJson(item));
      });
      return {
        "getLastWeeksDetail": lastWeeks,
      };
    }
  }
}

class get_Last_Days_Detail {
  static Future<Map> get_last_days_detail(weekId, clickDay) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await http.post(api.siteName + '/api/get_day_week', body: {
      "token": prefs.getString('myIp_token'),
      "week_id": '${weekId.toString()}',
      "clickDay": '${clickDay.toString()}'
    });
    print('aaaa');
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      List<getLessonModle> lastDays = [];
      responseBody['edu'].forEach((item) {
        lastDays.add(getLessonModle.fromJson(item));
      });
      return {
        "getLastDaysDetail": lastDays,
      };
    }
  }
}
