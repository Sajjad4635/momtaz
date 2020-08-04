import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/models/lessonModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class get_Saved_Data {
  static Future<Map> get_saved_data(int numOfDay1, int clickedDay) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var token = prefs.getString('myIp_token');

    var res = await http.post(api.siteName + '/api/get_edu', body: {
      "toDay": '${numOfDay1}',
      "clickDay": '${clickedDay}',
      "token": '${token}'
    });
    print(res.statusCode);
    var response = json.decode(res.body);
    List<getLessonModle> getdata1 = [];
    response['edu'].forEach((item) {
      getdata1.add(getLessonModle.fromJson(item));
    });
    return {
      "getLesson": getdata1,
    };
  }
}
