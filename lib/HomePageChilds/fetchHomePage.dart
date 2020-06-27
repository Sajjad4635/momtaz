import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/models/imageSliderModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class getimageSlider {
  static Future<Map> getimages() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await http.post(api.siteName + '/api/get_home',
        body: {"token": prefs.getString('myIp_token')});
    print(response.statusCode);

    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);

      List<imageSlider> getimage = [];
      responseBody['slider'].forEach((item) {
        getimage.add(imageSlider.fromJson(item));
      });
      return {
        "slider": getimage,
        "message": responseBody['message']['vlaue'],
        "logo": responseBody['logo']
      };
    }
  }
}
