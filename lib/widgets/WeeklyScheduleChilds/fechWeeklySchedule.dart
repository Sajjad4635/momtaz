import 'dart:convert';

import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/widgets/WeeklyScheduleChilds/WeeklyScheduleModel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class get_Weekly_Schedule {
  static Future<Map> get_weekly_schedule() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    print(prefs.getString('myIp_token'));

    final response = await http.post(api.siteName + '/api/get_plan_stu', body: {
      "token": prefs.getString('myIp_token'),
    });
print('aa');
    print(response.statusCode);
    print('bb');
    print(response.body);
    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      print(responseBody);

      List<getLessons> getlessons = [];
      responseBody['lesson'].forEach((item) {
        getlessons.add(getLessons.fromJson(item));
      });
      List<getWeeklySchedule> getweeklyscheduledetail = [];
      responseBody['plan'].forEach((item) {
        getweeklyscheduledetail.add(getWeeklySchedule.fromJson(item));
      });
      return {
        "getLessons": getlessons,
        "getWeeklySchedule": getweeklyscheduledetail,
      };
    }
  }
}
